# 6. Lists

## 1. Create a grid list

- `GridView` 위젯: 일반 리스트가 아닌 그리드로 아이템을 나타내고 싶을 때
- `GridView.count()` constructor를 사용하면 간단하게 그리드를 만들 수 있다
  - Rows나 Columns의 수를 지정할 수 있다

```dart
GridView.count(
  crossAxisCount: 2,
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }),
)
```

## 2. Create a horizontal list

- 좌우로 스크롤 되는 리스트를 만들고 싶을 때
- `ListView` 사용
  - `scrollDirection`을 `Axis.horizontal`로 세팅

## 3. Create lists with different types of items

- 다른 type을 가진 아이템을 리스트로 나타내고 싶을 때
  1. 각 type마다 class를 생성한다
  2. `ListView.builder()`를 사용해서 각 아이템을 위젯으로 만든다

## 4. Place a floating app bar above a list

- 유저가 스크롤 할 때 App Bar가 점점 사라지길 원할 때
  - 보통 App Bar를 만들 때: `Scaffold` 위젯에 `appBar` 프로퍼티를 추가한다
  - 항상 `Scaffold` 위젯의 `body` 보다 상단에 존재한다
- `Scaffold` 위젯이 아닌 `CustomScrollView` 위젯을 사용하면 된다
- `CustomScrollView`에 있는 scrollable lists & widgets은 _slivers_ 라고 부른다
  - 타입: `SliverLlist`, `SliverGridList`, `SliverAppBar`
    - `SliverAppBar`: "floating" app bar
    - `SliverList`: 하나 다음에 하나 (list)
    - `SliverGrid`: 그리드 리스트

## 5. Use lists

- `ListView` 위젯
  - `ListTile` 위젯

## 6. Work with long lists

- `ListView` 위젯은 Small Lists에 사용
- 더 큰 리스트는 `ListView.builder`를 사용
  - `ListView`는 한번에 모든 아이템을 만든다
  - `ListView.builder`는 유저가 스크롤해서 화면에 보일 때 아이템을 만든다
- `ListView.builder`를 사용해서 각 아이템을 위젯으로 만든다
  ```dart
  ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('${items[index]}'),
      );
    },
  );
  ```
-
