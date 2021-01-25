# 2. Design

## 1. Add a Drawer to a screen

- Material Design을 사용하는 앱에서는 두 가지 네비게이션 옵션이 있다: Tabs와 Drawers
- Drawer 만들기: `Scaffold`와 `Drawer`를 사용

1. `Scaffold` 만들기
2. `Drawer` 추가
3. `Drawer`에 item 추가 (예시에는 `ListView` 사용)
4. `Drawer` 닫기

## 2. Display a snackbar

- 특정 액션이 일어나면 유저에게 inform 해줘야하는 상황
- ex) 리스트에서 메세지를 swipe -> inform the user that the message has been deleted & also provide an option to undo

1. `Scaffold` 만들기
2. `Snackbar` 생성
3. 옵셔널 액션 추가

## 3. Export fonts from a pakcage

1. 패키지에 폰트 추가

   - 프로젝트의 `lib` 폴더에 폰트 파일 import
   - 폰트를 `lib` 폴더, 혹은 `lib/fonts` 폴더에 추가

2. 패키지와 폰트를 앱에 추가

   - `pubspec.yaml` 업데이트
   - 아래 예시: `awesome_package` = 프로젝트 이름

   ```dart
   dependencies:
     awesome_package: <latest_version>
   ```

   ```dart
   flutter:
     fonts:
       - family: Raleway
         fonts:
           - asset: packages/awesome_package/fonts/Raleway-Regular.ttf
           - asset: packages/awesome_package/fonts/Raleway-Italic.ttf
             style: italic
   ```

3. 폰트 사용

   ```dart
   Text(
     'Using the Raleway font from the awesome_package',
     style: TextStyle(
       fontFamily: 'Raleway',
       package: 'awesome_package',
     ),
   );
   ```

## 4. Update the UI based on orientation

- 유저가 스크린을 돌렸을 때 (portrait mode -> landscape mode)
- `Orientation`을 사용해서 different layout

1. 2 column을 사용해서 GridView 만들기
2. `OrientationBuilder` 사용해서 number of column 바꾸기

## 5. Use a custom font

1. 폰트 파일 import 하기

   - root 폴더 안에 `fonts` 혹은 `assets` 폴더 만들기
   - 만든 폴더 안에 ttf 파일 넣기

2. pubspec에 폰트 declare 하기

   - `pubspec.yaml` 파일에 내용 추가하기

   ```dart
   flutter:
     fonts:
       - family: Raleway
         fonts:
           - asset: fonts/Raleway-Regular.ttf
           - asset: fonts/Raleway-Italic.ttf
             style: italic
       - family: RobotoMono
         fonts:
           - asset: fonts/RobotoMono-Regular.ttf
           - asset: fonts/RobotoMono-Bold.ttf
             weight: 700
   ```

3. 폰트를 default로 설정하기

   - app의 `theme`에서 `fontFamily`를 추가

   ```dart
    MaterialApp(
      title: 'Custom Fonts',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: MyHomePage(),
    );
   ```

4. 특정 위젯에서 폰트 사용하기

   - `TextStyle`에 추가

   ```dart
   Text(
     'Roboto Mono sample',
     style: TextStyle(fontFamily: 'RobotoMono'),
   );
   ```

## 6. Use themes to share colors and font styles

- app-wide theme (`MaterialApp` `root`에서 `Theme` 위젯을 사용하는 것)을 define 하거나, `Theme` 위젯을 사용

1. App `theme` 만들기
2. 앱의 part에 `theme` 만들기
   1. Creating a unique `ThemeData`
   2. Extending the parent theme with `copyWith()`
3. `Theme` 사용
   - `Theme.of(context)` 사용

## 7. Work with tabs

1. `TabController` 만들기
2. 탭 만들기
3. 각 탭 content 만들기
