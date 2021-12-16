Pod::Spec.new do |s|
  s.name         = "RTLSSensor"
  s.version      = "1.0.2"
  s.summary      = "Coreaiot Sensor SDK"
  s.description  = <<-DESC
  Coreaiot Sensor SDK for iOS
  DESC
  s.homepage     = "http://www.coreaiot.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2020
                 CoreAIOT Technology Co.,Ltd.All Rights Reserved.
                LICENSE
              }
  s.author       = { "Yu Chen" => "yu.chen@corelink.vip" }
  s.source       = { :git => 'https://github.com/coreaiot/RTLSSensor.git', :tag => s.version }
  s.vendored_frameworks = "RTLSSensor.framework"
  s.platform = :ios
  s.swift_version = "5.5"
  s.ios.deployment_target  = '10.0'
end