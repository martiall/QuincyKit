Pod::Spec.new do |s|
  s.name         = "QuincyKit"
  s.version      = "2.1.9.1"
  s.summary      = "Live crash report management for iOS and Mac OS X. AppStore ready on iOS only! Follow news on Twitter via @hockeyapp"

  s.homepage     = "http://quincykit.net"

  s.license      = "MIT & Apache License, Version 2.0"

  s.authors      = { "Andreas Linde => "mail@andreaslinde.de" }

  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/martiall/QuincyKit.git" }

  s.ios.source_files  = "client/iOS/*.{h,m}"
  s.ios.resources  = "client/iOS/Quincy.bundle"

  s.ios.preserve_paths = "client/iOS/CrashReporter.framework"
  s.ios.frameworks = "SystemConfiguration", "CrashReporter"

  s.ios.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/QuincyKit/client/iOS\"" }

  s.osx.source_files  = "client/Mac/*.{h,m}"
  s.osx.resources  = "client/Mac/BWQuincyMain.nib"

  s.requires_arc = false

end
