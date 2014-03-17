Pod::Spec.new do |s|
  s.name         = "NTNamedFonts"
  s.version      = "1.00"
  s.summary      = "NTNamedFonts - Extends UIFont with named font constructors so you don't end up hard-coding the font names in your app. Also provides the same functionality for your custom fonts."
  s.homepage     = "https://github.com/NagelTech/NTNamedFonts"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ethan Nagel" => "eanagel@gmail.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/NagelTech/NTNamedFonts.git", :tag => "1.00" }
  s.requires_arc = true
  s.source_files = '*.{h,m}'
end
