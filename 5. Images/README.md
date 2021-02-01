# 5. Images

## 1. Display images from the internet

- `Image` 위젯 사용 (사진 및 gif)
- URL이 있는 사진: `Image.network()`

## 2. Fade in images with a placeholder

- `FadeInImage`: 이미지 로딩 전에는 Placeholder 사용 & 이미지가 fade in
  - in-memory, local assets, internet images 모두 사용 가능
- `import 'package:transparent_image/transparent_image.dart';`
  - pubspec.yaml에도 import
- In-memory:
  ```dart
  FadeInImage.memoryNetwork(
    placeholder: kTransparentImage,
    image: 'https://picsum.photos/250?image=9',
  );
  ```
- Local Asset:
  - 사용하는 asset을 pubspec.yaml 파일에 추가
  ```dart
  FadeInImage.assetNetwork(
    placeholder: 'assets/loading.gif',
    image: 'https://picsum.photos/250?image=9',
  );
  ```

## 3. Work with cached images

- 오프라인일 때도 이미지를 사용할 수 있도록 이미지 캐싱
- `cached_network_image` 패키지 사용
  - 캐싱 뿐만 아니라 placeholder랑 fading images in 기능도 지원한다
  ```dart
    CachedNetworkImage(
    imageUrl: 'https://picsum.photos/250?image=9',
  );
  ```
  - placeholder가 있는 예시
    ```dart
    CachedNetworkImage(
      placeholder: (context, url) => CircularProgressIndicator(),
      imageUrl: 'https://picsum.photos/250?image=9',
    );
    ```
