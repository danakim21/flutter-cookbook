# 1. Animation

## 1. Animate a page route transition

- `PageRouteBuilder`: Provides an `Animation` object
- `Animation`: `Tween`과 `Curve` object와 사용한다
- 커스텀 페이지 Route Transition 만드는 방법:
  1. PageRouteBuilder 셋업하기
  2. `Tween` 만들기
  3. `AnimatedWidget` 추가하기
  4. `CurveTween` 사용하기
  5. `Tween` 합치기

### 1. PageRouteBuilder 셋업하기

- `PageRouteBuilder`를 사용해서 `Route`를 만든다
- `PageRouteBuilder`의 두 콜백
  1. `pageBuilder`: Route의 content
  2. `transitionsBuilder`: Route의 transition

### 2. Tween 만들기

```dart
var begin = Offset(0.0, 1.0);
var end = Offset.zero;
var tween = Tween(begin: begin, end: end);
```

### 3. AnimatedWidget 추가하기

- `SlideTransition` 사용하기
- 결과: 아래에서 위로 올라오는 애니메이션이 추가됨

### 4. CurveTween 사용하기

- `Curves` 사용해서 속도 조절
- ex) `Curves.easeOut`은 애니메이션이 빠르게 시작하고 느리게 끝나게 함

### 5. Tween 두 개 합치기

- `chain()` 사용해서 합치기

## 2. Animate a widget using a physics simulation

1. Animation Controller 만들기
2. Gesture 사용해서 위젯 움직이기
3. Widget 애니메이션 추가
4. Spring 모션 속도 제어

## 3. Animate the properties of a container

- `AnimatedContainer` 위젯: 다시 만들어질 때 예전 값에서 새로운 값으로 애니메이션이 자동 추가된다 (Implicit animations라고 부름)

1. 디폴트 값으로 StatefulWidget 만들기
2. `AnimatedContainer` 만들기
3. `setState()`로 rebuild를 트리거하기

## 4. Fade a widget in and out

- Smooth experience를 위해 자연스러운 fade in & fade out
- `AnimatedOpacity` 위젯을 사용
- setState를 사용해서 opacity를 바꾼다

1. Fade in & Fade out box 만들기
2. `StatefulWidget` 만들기
3. Visibility를 컨트롤 할 button 만들기
