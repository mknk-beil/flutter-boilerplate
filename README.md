# boilerplate

Flutter Boilerplate

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 初期環境設定

### package の version を確認

`pubspec.yaml` 上で記述している package が全て最新の version のものになっているかを確認する

### bundle ID の修正

全文書検索で、 `com.beilinc.boilerplate` を任意の bundle ID に replace する

### app icon 設定

`assets/images/icon-<development/staging/production>.png` のアイコン画像を適切な 1024*1024 px の画像に変更する

## Firebase 周辺の設定

### ビルド環境ごとの Firebase project を作成する

- 開発・ステージング・本番環境の３つのビルド環境用に３つの Firebase project を作成する

### iOS の設定

- `GoogleService-Info.plist` を `ios/Runner/Firebase` folder 内の各ビルド環境ファイルに保存する
- `ios/Flutter` directory 内の `Development.xcconfig` , `Staging.xcconfig` , `Production.xcconfig` の `PRODUCT_BUNDLE_IDENTIFIER` , `[Dev] Boilerplate` を適切な名称に変更する

### Android の設定

署名証明書（SHA-1）を発行し、 Firebase project に登録する

- `google-services.json` をダウンロードして、 Android の各ビルド環境ごとの src directory (android/app/src/dev など) に移動する
- debug と release 用の keystore を生成する
- `key.properties` file を `key.properties.example` をコピーして作成し、keystoreのパスワード情報などを更新する

※ keystore とそのパスワード情報は紛失予防のために、安全なクラウド環境にアクセス制限をかけた状態で保存しておくこと

### web の設定

`web/firebase-config.example.js` をコピーして `web/firebase-config.js` file を作成し、ビルド環境ごとの firebaseConfig 情報を上書きする
