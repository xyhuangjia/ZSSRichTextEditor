Pod::Spec.new do |s|
  s.name             = 'ZSSRichTextEditor'
  s.version          = '1.0.0'
  s.summary          = '基于 WKWebView 的所见即所得富文本编辑器。'
  s.description      = <<-DESC
                        ZSSRichTextEditor 的 WKWebView 维护版本：工具栏、颜色选择、字体选择、
                        源码视图、图片/链接插入，附带编辑器所需的 HTML、JavaScript 与图标资源。
                       DESC
  s.homepage         = 'https://github.com/xyhuangjia/ZSSRichTextEditor'
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { 'Zed Said Studio' => 'https://github.com/nnhubbard' }
  s.source           = { :git => 'https://github.com/xyhuangjia/ZSSRichTextEditor.git', :tag => s.version.to_s }

  s.platform         = :ios, '15.0'
  s.requires_arc     = true
  s.frameworks       = 'UIKit', 'WebKit', 'JavaScriptCore'

  s.source_files        = 'Sources/ZSSRichTextEditor/**/*.{h,m}'
  s.public_header_files = 'Sources/ZSSRichTextEditor/include/*.h'
  s.resources           = 'Sources/ZSSRichTextEditor/Resources/*'
end
