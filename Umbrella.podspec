Pod::Spec.new do |s|
  s.name             = "Umbrella"
  s.version          = "0.13.0"
  s.summary          = "Analytics abstraction layer for Swift"
  s.homepage         = "https://github.com/StyleShare/Umbrella"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "StyleShare" => "dev-ios@styleshare.kr" }
  s.source           = { :git => "https://github.com/StyleShare/Umbrella.git",
                         :tag => s.version.to_s }
  s.swift_version    = "5.0"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.11"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "Sources/Umbrella/*.swift"
  end

  s.subspec "Appboy" do |ss|
    ss.source_files = "Sources/UmbrellaAppboy/*.swift"
    ss.dependency "Umbrella/Core"
  end

  s.subspec "AppsFlyer" do |ss|
    ss.source_files = "Sources/UmbrellaAppsFlyer/*.swift"
    ss.dependency "Umbrella/Core"
  end

  s.subspec "Firebase" do |ss|
    ss.source_files = "Sources/UmbrellaFirebase/*.swift"
    ss.dependency "Umbrella/Core"
  end
end
