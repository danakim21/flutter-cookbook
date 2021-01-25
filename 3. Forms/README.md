# 3. Forms

## 1. Build a form with validation

1. `Form`과 `GlobayKey` 만들기
2. `TextFormField` 만들고 validation logic 추가
3. Validate & Submit 버튼 만들기

## 2. create and style a text field

- 두 가지 text field가 제공된다:
  - `TextField`
  - `TextFormField`
- `TextField`
  - Default: underline
  - `decoration`으로 `InputDecoration`을 추가할 수 있다
  - decoration 전부 지우기: `decoration` = `null`
  ```dart
  TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Enter a search term'
    ),
  );
  ```
- `TextFormField`
  - Validation이나 integration with other FormField 위젯 같은 추가 기능을 제공
  ```dart
  TextFormField(
    decoration: InputDecoration(
      labelText: 'Enter your username'
    ),
  );
  ```

## 3. Focus and text fields

- focus: 텍스트 필드가 선택되고 인풋을 받는 상태

1. 텍스트 필드에 바로 포커스
   ```dart
   TextField(
     autofocus: true,
   );
   ```
2. 버튼이 눌렸을 때 텍스트 필드에 포커스
   1. ## FocusNode 만들기
   2. 텍스트 필드에 FocusNode 전달
   3. 버튼이 눌렸을 때 텍스트 필드에 포커스

## 4. Handle changes to a text field

1. 방법 1: `onChanged()` 콜백 사용하기
   ```dart
   TextField(
     onChanged: (text) {
       print("First text field: $text");
     },
   );
   ```
2. 방법 2: `TextEditingController` 사용하기
   1. `TextEditingController` 만들기
   2. 텍스트 필드랑 연결하기
   3. 함수 작성

## 5. Retrive the value of a text field

1. `TextEditingController` 만들기
2. `TextField`랑 연결
