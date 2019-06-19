# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

workspace 'ECWorkspace'
project 'EnglishCentralSDK/ECCoreKit/ECCoreKit.xcodeproj'
project 'EnglishCentralSDK/ECMonitoringKit/ECMonitoringKit.xcodeproj'
project 'EnglishCentralSDK/ECPlayerKit/ECPlayerKit.xcodeproj'
project 'EnglishCentralApp/EnglishCentralApp.xcodeproj'

def import_coreKit
  pod 'ECCoreKit', :path => "EnglishCentralSDK/ECCoreKit"
end

def import_monitoringKit
  pod 'ECMonitoringKit', :path => "EnglishCentralSDK/ECMonitoringKit"
end

def import_playerKit
  pod 'ECPlayerKit', :path => "EnglishCentralSDK/ECPlayerKit"
end

target 'ECCoreKit' do
  project 'EnglishCentralSDK/ECCoreKit/ECCoreKit.xcodeproj'

  # Pods for CoreKit
  import_coreKit
end

target 'ECMonitoringKit' do
  project 'EnglishCentralSDK/ECMonitoringKit/ECMonitoringKit.xcodeproj'

  # Pods for TutorKit
  import_monitoringKit

  # Local pods
  import_coreKit
end

target 'ECPlayerKit' do
project 'EnglishCentralSDK/ECPlayerKit/ECPlayerKit.xcodeproj'

# Pods for ECPlayerKit
import_playerKit

# Local pods
import_coreKit
end

target 'EnglishCentralApp' do
  project 'EnglishCentralApp/EnglishCentralApp.xcodeproj'
  use_frameworks!

  # Pods for EnglishCentralApp
  import_coreKit
  import_monitoringKit
  import_playerKit
end

target 'MyEnglishApp' do
  use_frameworks!

  # Pods for MyEnglishApp
  import_coreKit
  import_playerKit
end

