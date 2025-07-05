# ScrollViewStyle_Rebuild

## 概要

横スクロール可能な写真ビューアアプリケーションです。複数の写真を美しいカードレイアウトで表示し、水平方向にスクロールして閲覧できます。

## 機能

- **横スクロール写真ビューア**: 複数の写真を水平方向にスクロールして閲覧
- **カードレイアウト**: 各写真をタイトル付きのカードとして表示
- **レスポンシブデザイン**: 写真のアスペクト比を維持しながら適切にサイズ調整

## アーキテクチャ

### ファイル構成

```
ScrollViewStyle_Rebuild/
├── ContentView.swift           # メインビュー（スクロールビューの実装）
├── PhotoData.swift            # 写真データの構造体と配列データ
├── PhotoView.swift            # 個別の写真カードビュー
├── ScrollViewStyle_RebuildApp.swift  # アプリケーションのエントリーポイント
└── ScrollViewStyle_Rebuild.entitlements  # アプリケーションの権限設定
```

### 主要コンポーネント

#### 1. PhotoData 構造体

```swift
struct PhotoData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}
```

- 写真の情報を管理する構造体
- `Identifiable`プロトコルに準拠し、ForEach で使用可能
- 画像名とタイトルを保持

#### 2. ContentView

- `ScrollView(.horizontal)`で水平スクロールを実装
- `LazyHStack`で効率的な水平レイアウト
- 写真カードのサイズ: 450×700 ピクセル
- 角丸（cornerRadius: 10）とパディング（spacing: 10）を適用

#### 3. PhotoView

- 個別の写真カードを表示するビュー
- 背景色: `Color(red: 0.3, green: 0.3, blue: 0.5)`（紫がかったグレー）
- 画像とタイトルを垂直レイアウト（VStack）で配置
- 角丸（cornerRadius: 8）を適用

## サンプルデータ

アプリには 6 枚の幻想的な風景写真のサンプルデータが含まれています：

- IMG_042440 - "幻想的な風景"
- IMG_042441 - "めっちゃ幻想的な風景"
- IMG_042442 - "すんげー幻想的な風景"
- IMG_042443 - "とっても幻想的な風景"
- IMG_042444 - "どえらい幻想的な風景"
- IMG_042445 - "ホントに幻想的な風景"

## 使用方法

1. アプリを起動すると、写真が水平方向に配列されて表示されます
2. 左右にスワイプまたはドラッグして写真をスクロールします
3. 各写真にはタイトルが表示されます

## 技術仕様

- **フレームワーク**: SwiftUI
- **対応プラットフォーム**: macOS（サンドボックス有効）
- **レイアウト**: LazyHStack + ScrollView
- **画像表示**: aspectRatio(.fit)でアスペクト比を維持

## 権限設定

- アプリサンドボックス有効
- ユーザー選択ファイルの読み取り専用アクセス権限

## カスタマイズ

### 写真データの追加

`PhotoData.swift`の`photoArray`配列に新しい`PhotoData`インスタンスを追加：

```swift
PhotoData(imageName: "新しい画像名", title: "新しいタイトル")
```

### デザインの変更

- カードサイズ: `ContentView.swift`の`frame(width:height:)`
- 背景色: `PhotoView.swift`の`background(Color(...))`
- 角丸: `cornerRadius`パラメータ
- 間隔: `LazyHStack`の`spacing`パラメータ
