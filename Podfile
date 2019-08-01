# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'



target 'LeetCodePlayground' do
  use_frameworks!
  
  # Pods for LeetCodePlayground
  pod 'RxSwift', '~> 4.4'
  pod 'RxCocoa', '~> 4.4'
end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
end

