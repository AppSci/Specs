Pod::Spec.new do |s|
  s.name             = 'FirebaseAuth'
  s.version          = '7.1.1'
  s.summary          = 'Apple platform client for Firebase Authentication'

  s.description      = <<-DESC
Firebase Authentication allows you to manage your own account system without any backend code. It
supports email and password accounts, as well as several 3rd party authentication mechanisms.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/AppSci/firebase-ios-sdk.git'
  }

  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '6.0'

  s.cocoapods_version = '>= 1.4.0'
  s.prefix_header_file = false

  source = 'FirebaseAuth/Sources/'
  s.source_files = [
    source + '**/*.[mh]',
    'FirebaseCore/Sources/Private/*.h',
    'Interop/Auth/Public/*.h',
  ]
  s.public_header_files = source + 'Public/FirebaseAuth/*.h'
  s.preserve_paths = [
    'FirebaseAuth/README.md',
    'FirebaseAuth/CHANGELOG.md'
  ]
  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }
  s.framework = 'Security'
  s.ios.framework = 'SafariServices'
  s.dependency 'FirebaseCore', '~> 7.0'
  s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 7.0'
  s.dependency 'GoogleUtilities/Environment', '~> 7.0'
  s.dependency 'GTMSessionFetcher/Core', '~> 1.4'
end