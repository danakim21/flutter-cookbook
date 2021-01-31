# 4. Gestures

## 1. Add Material touch ripples

- Material Design 가이드라인에 따르면 위젯은 탭 되었을 때 ripple animation이 나타난다
  - Flutter: `InkWell` 위젯

```dart
Widget build(BuildContext context) {
  return InkWell(
    onTap: () {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Tap'),
      ));
    },
    child: Container(
      padding: EdgeInsets.all(12.0),
      child: Text('Flat Button'),
    ),
  );
}
```

## 2. Handle taps

- `GestureDetector` 사용해서 탭, 드래깅 관련을 핸들

```dart
GestureDetector(
  onTap: () {
    final snackBar = SnackBar(content: Text("Tap"));
    Scaffold.of(context).showSnackBar(snackBar);
  },
  child: Container(
    padding: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Theme.of(context).buttonColor,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text('My Button'),
  ),
);
```

- `onTap` 뿐만 아니라, `onDoubleTap`, `onForcePressStart`, `onHorizontalDragDown` 등으로 다양하게 제공

## 3. Implement swipe to dismiss

- "Swipe to dismiss" (밀어서 제거/삭제) 는 모바일에서 흔히 볼 수 있다
- `Dismissable` 위젯 사용

1. 리스트 만들기
2. 각 아이템을 `Dismissable` 위젯으로 감싸기
3. "Leave behind" indicator 추가하기

- Visual Indicator of what happens when a user swipes items off the list
- 예시: 스와이프를 할 때 배경이 빨간색
- 각 `Dismissable` 위젯은 `key`가 있어야한다 (to uniquely identify)
- `onDismissed`: 아이템이 스와이프 되면 실행할 함수
