# 9. Networking

## 1. Delete data on the internet

- `http` 패키지를 사용해서 인터넷 데이터를 삭제하는 법
  1. `http` 패키지 추가하기
     - `pubspec.yaml` dependencies 에 추가하기
  2. 서버 데이터 삭제하기
     - `http.delete()` 메서드 사용
     - `Future`: async 처리할 때 사용하는 Dart 클래스
  3. 화면 업데이트 하기

## 2. Fetch data from the internet

1. `http` 패키지 추가하기
2. `AndroidManifest.xml` 파일에 인터넷 퍼미션 추가하기
   - android > app > src > main > AndroidManifest.xml
3. `http.get()` 메서드로 fetch 하기
4. Response를 커스텀 Dart 오브젝트로 바꾸기
5. `initState()`에서 데이터 가져오기
6. `FutureBuilder` 위젯 사용해서 데이터 보여주기
   - 비동기 데이터를 처리할 때 유용

```dart
final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
final response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
```

## 3. Make authenticated requests

- Authorization이 필요한 경우에는 `Authorization` HTTP Header를 사용
  ```dart
  Future<http.Response> fetchAlbum() {
    return http.get(
      'https://jsonplaceholder.typicode.com/albums/1',
      headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
    );
  }
  ```
- 다른 방법: `dart:io` 라이브러리에서 `HttpHeaders` 클래스 사용

## 4. Parse JSON in the background

- Jank: Poor app performance / stuttering animations
- Solution: Perform expensive computations in the background
- `Isolate`, `compute()` 사용

## 5. Send data to the internet

1. `http` 패키지 추가하기
2. `http.post()` 메서드 사용
   ```dart
   Future<http.Response> createAlbum(String title) {
     return http.post(
       Uri.https('jsonplaceholder.typicode.com', 'albums'),
       headers: <String, String>{
         'Content-Type': 'application/json; charset=UTF-8',
       },
       body: jsonEncode(<String, String>{
         'title': title,
       }),
     );
   }
   ```

## 6. Update data over the internet

1. `http` 패키지 추가하기
2. `http.put()` 메소드 사용하기

## 7. Work with WebSockets

1. WebSocket 서버랑 연결
   - `web_socket_channel` 패키지 사용하기
   - `final channel = IOWebSocketChannel.connect('ws://echo.websocket.org');`
2. 서버에서 메세지 기다리기

   - `WebSocketChannel`은 메세지 `Stream`을 리턴 (비동기)
   - `Future`: 1개의 비동기
   - `Stream` 클래스: 여러 비동기 이벤트

   ```dart
   StreamBuilder(
     stream: widget.channel.stream,
     builder: (context, snapshot) {
       return Text(snapshot.hasData ? '${snapshot.data}' : '');
     },
   );
   ```

3. 서버에 메세지 보내기
   - `channel.sink.add('Hello!');`
4. WebSocket connection 닫기
   - `channel.sink.close();`

## 정리

- `http` 패키지 사용한다
- `http` 메소드는 `Future`를 리턴한다
  - `Future` 오브젝트: 미래에 어떤 값 혹은 에러를 가진다
- `Future<http.Response>`를 custom Dart object로 변환한다
  - `factory` `fromJson`을 만든다
- `FutureBuilder`를 사용해서 화면에 띄운다
  - `FutureBuilder` `builder`의 `snapshot`에는 `connectionState`, `hasData`, `error` 등이 있다 (`ConnectionState.done`)
- fetch하는 경우 initState()에서 실행한다
