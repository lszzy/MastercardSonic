Pod::Spec.new do |spec|
  spec.name                = 'MastercardSonic'
  spec.version             = '1.1.0'
  spec.summary             = 'MastercardSonic'
  spec.homepage            = 'https://developer.mastercard.com/mastercard-sonic-branding/documentation/'
  spec.license             = 'MIT'
  spec.author              = { 'wuyong' => 'admin@wuyong.site' }
  spec.source              = { :git => 'https://github.com/lszzy/MastercardSonic.git', :tag => spec.version }
  
  spec.platform            = :ios, '11.0'
  spec.vendored_frameworks = "MastercardSonic/MastercardSonic.xcframework"
  spec.swift_version       = "5.0"
end
