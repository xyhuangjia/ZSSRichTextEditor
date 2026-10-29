# ZSSRichTextEditor

基于 WKWebView 的所见即所得富文本编辑器，带语法高亮源码视图、工具栏、颜色选择器与字体选择器。

本仓库基于 [nnhubbard/ZSSRichTextEditor](https://github.com/nnhubbard/ZSSRichTextEditor)（Zed Said Studio，MIT）维护。相对上游的主要改动：

- 从 UIWebView 迁移到 WKWebView
- 新增 `ZSSFontsViewController` 字体选择
- 工具栏与编辑器样式按中文排版场景调整
- 资源查找同时兼容 CocoaPods framework 与 Swift Package Manager 资源包

## 环境要求

- iOS 13.0+
- Xcode 15+

## 安装

### Swift Package Manager

```swift
.package(url: "https://github.com/xyhuangjia/ZSSRichTextEditor.git", from: "1.0.0")
```

### CocoaPods

```ruby
pod 'ZSSRichTextEditor', :git => 'https://github.com/xyhuangjia/ZSSRichTextEditor.git', :tag => '1.0.0'
```

> 编辑器依赖 `editor.html`、`jQuery.js`、`JSBeautifier.js`、`ZSSRichTextEditor.js` 和一批工具栏图标。两种安装方式都会把这些资源带进对应的 bundle，库内 `ZSSResourceBundle()` 会自动定位。

## 使用

```objc
#import <ZSSRichTextEditor/ZSSRichTextEditor.h>

ZSSRichTextEditor *editor = [[ZSSRichTextEditor alloc] init];
editor.enabledToolbarItems = @[
    ZSSRichTextEditorToolbarBold,
    ZSSRichTextEditorToolbarItalic,
    ZSSRichTextEditorToolbarUnderline,
    ZSSRichTextEditorToolbarH1,
    ZSSRichTextEditorToolbarUnorderedList,
    ZSSRichTextEditorToolbarOrderedList
];
[editor setHTML:@"<p>hello</p>"];

[editor getHTML:^(id html, NSError *error) {
    NSLog(@"%@", html);
}];
```

子类化后按需覆盖：

- `editorDidChangeWithText:andHTML:` — 内容变化
- `hashtagRecognizedWithWord:` / `mentionRecognizedWithWord:` — #话题 / @提及
- `editorDidScrollWithPosition:` — 编辑器滚动

## 目录结构

```
Sources/ZSSRichTextEditor/
├── include/          # 公开头文件
├── *.m               # 编辑器、工具栏、字体选择、颜色选择器
└── Resources/        # HTML / JS / 工具栏图标
```

## 许可

[MIT](LICENSE.txt)，版权归 Zed Said Studio 所有。仓库内 `Resources/` 中的 jQuery、JSBeautifier 以及 `HRColorPicker`、`CYRTextView` 等组件同样以 MIT 许可随上游一同分发。
