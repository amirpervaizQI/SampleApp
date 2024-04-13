# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'obusdk-ios-sample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for obusdk-ios-sample
 pod 'extol', '1.0.3'

  target 'obusdk-ios-sampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'obusdk-ios-sampleUITests' do
    # Pods for testing
  end

end

post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
  end
 end
end
