Pod::Spec.new do |s|
  s.name         = "FTTimer"
  s.version      = "0.0.1"
  s.summary      = "Just a tiny library to make using NSTimer easier without retain cycle"
  s.homepage     = "https://github.com/futantan/FTTimer"
  s.license      = "MIT"
  s.author       = { "futantan" => "luckytantanfu@gmail.com" }
  s.source       = { :git => "https://github.com/futantan/FTTimer.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files  = 'Sources/*.swift'
  s.module_name   = 'FTTimerFramework'
end
