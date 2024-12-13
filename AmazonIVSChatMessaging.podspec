Pod::Spec.new do |s|
    s.name         = 'AmazonIVSChatMessaging'
    s.version      = '1.0.9'
    s.summary      = 'A brief description of AmazonIVSChatMessaging.'
    s.description  = 'A more detailed description of AmazonIVSChatMessaging.'
    s.homepage     = 'https://yourhomepage.com'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'Your Name' => 'your.email@example.com' }
    s.source       = { :git => 'https://github.com/user97116/AWSIVSChatPlugin.git', :tag => s.version.to_s }
    s.source_files = 'Sources/**/*.{swift}'
    s.requires_arc = true
    s.swift_version = '5.0'
    s.ios.deployment_target = '14.0' 
  end