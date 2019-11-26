

Pod::Spec.new do |spec|

  spec.name         = "KCUtilities"
  spec.version      = "0.0.1"
  spec.homepage     = 'https://github.com/CandyDeng/JCCategory'
  spec.summary      = "A short description of KCUtilities"
  spec.authors      = { 'CandyDeng' => '1806650037@qq.com' }
  spec.source       = { :git => "https://github.com/CandyDeng/JCCategory.git", :tag =>         spec.version }
  spec.source_files  = "KCUtilities/*.{h,m}"
  spec.requires_arc = true
  spec.ios.deployment_target  = '8.0'
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.description  = <<-DESC 
                          JCUtilities 是一个用于保存一些常用工具类的工具
                   DESC


end
