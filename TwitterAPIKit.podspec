Pod::Spec.new do |s|
  s.name = "TwitterAPIKit"
  s.version = "0.2.4"
  s.summary          = "Swift library for the Twitter API v1 and v2 🍷"
  s.homepage = "https://github.com/mironal/TwitterAPIKit"
  s.documentation_url = "https://github.com/mironal/TwitterAPIKit"
  s.authors = "mironal"
  s.platform = :ios, "12.0"
  s.source  = { :git => "https://github.com/hearther/TwitterAPIKit.git", :tag => "0.2.3" }
  s.source_files = 'Sources/TwitterAPIKit'
  s.license = { :type => "MIT license", :text => "https://github.com/mironal/TwitterAPIKit/blob/main/LICENSE "}
  s.frameworks = "CoreText", "QuartzCore", "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit", "CoreMedia", "AVFoundation", "SafariServices"
end
