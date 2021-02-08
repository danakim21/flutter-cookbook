# 8. Navigation

## 1. Animate a widget across screens

- 화면이 바뀔 때마다 위젯을 animate 하고 싶을 때: `Hero` 위젯 사용
- 둘 다 `Hero` 위젯으로 감싸고 같은 `tag`을 사용하면 자동으로 애니메이션이 추가된다

## 2. Navigate to a new screen and back

- 플러터에서 _screens_ 와 _pages_ 는 _routes_ 라고 부른다
- `Navigator`를 사용해서 새로운 route로 이동
  - `Navigator.push()`: Stack에 해당 Route 추가
    - 여기서 Route는 `MaterialPageRoute`를 통해 만든다
  - `Navigator.pop()`: Stack에서 해당 Route 제거
    - `Navigator.pop(context);`

## 3. Navigate with named routes

- 다양한 곳에서 같은 화면으로 이동하고 싶을 때
  - named routes를 사용한다
  - `Navigator.pushNamed()`

## 4. Pass arguments to a named route

- `Navigator.pushNamed()`에서 `arguments` 사용
- `ModalRoute.of()`와 `onGenerateRoute()` 사용해서 argument를 가져온다
  - `ModalRoute.of()`: 현재 route와 argument를 가져오는 메서드

## 5. Return data from a screen

- 화면에서 데이터를 보내고 싶을 때:
  - `Navigator.pop()` 사용
- `Navigator.push`: `Navigator.pop`이 실행된 후 실행되는 `Future`를 리턴한다

## 6. Send data to a new screen

- 새로운 화면에 데이터를 보내고 싶을 때
