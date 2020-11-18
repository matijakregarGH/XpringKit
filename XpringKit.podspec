Pod::Spec.new do |spec|
  spec.name         = "XpringKit"
  spec.version      = "5.1.1"
  spec.summary      = "XpringKit provides a Swift based SDK for interacting with Xpring Platform (XRP/ILP)"

  spec.description  = "
    XpringKit provides a Swift based SDK for interacting with Xpring Platform (XRP/ILP)

    XpringKit is part of the Xpring SDK. To learn more, visit: http://github.com/xpring-eng/Xpring-SDK.
  "

  spec.homepage     = "http://xpring.io"
  spec.license      = "MIT"
  spec.author       = { "Xpring Engineering" => "xpring@ripple.com" }
  spec.source       = { :git => "https://github.com/xpring-eng/XpringKit.git", :tag => "v5.1.1" }

  spec.swift_versions = [5.1]
  spec.requires_arc = true
  spec.ios.deployment_target = '11.0'
  spec.osx.deployment_target = '10.10'

  spec.default_subspec = 'All'

  spec.subspec 'Common' do |common_subspec|
    common_subspec.resources = [ "XpringKit/Common/Resources/*" ]
    common_subspec.source_files = 'XpringKit/Common/*.swift'
    common_subspec.frameworks = 'Foundation'
  end

  spec.subspec 'ILP' do |ilp_subspec|
    ilp_subspec.source_files = 'XpringKit/XRP/**/*.swift'
    ilp_subspec.dependency 'XpringKit/Common'
    ilp_subspec.dependency 'SwiftGRPC', '~> 0.9.1'
    ilp_subspec.dependency 'SwiftProtobuf', '~> 1.5.0'
  end

  spec.subspec 'PayID' do |payid_subspec|
    payid_subspec.source_files = 'XpringKit/XRP/**/*.swift'
    payid_subspec.dependency 'XpringKit/Common'
    payid_subspec.dependency 'Alamofire', '~> 4.9.0'
  end

  spec.subspec 'Xpring' do |xpring_subspec|
    xpring_subspec.source_files = 'XpringKit/XRP/**/*.swift'
    xpring_subspec.dependency 'XpringKit/Common'
  end

  spec.subspec 'XRP' do |xrp_subspec|
    xrp_subspec.source_files = 'XpringKit/XRP/**/*.swift'
    xrp_subspec.dependency 'XpringKit/Common'
    xrp_subspec.dependency 'BigInt', '~> 5.0.0'
    xrp_subspec.dependency 'SwiftGRPC', '~> 0.9.1'
    xrp_subspec.dependency 'SwiftProtobuf', '~> 1.5.0'
  end

  spec.subspec 'All' do |all_subspec|
    all_subspec.dependency 'XpringKit/ILP'
    all_subspec.dependency 'XpringKit/PayID'
    all_subspec.dependency 'XpringKit/Xpring'
    all_subspec.dependency 'XpringKit/XRP'
  end

  spec.test_spec "Tests" do |test_spec|
    test_spec.source_files = ["Tests/**/*.swift"]

    test_spec.dependency 'BigInt', '~> 5.0.0'

    test_spec.frameworks = "Foundation"
  end
end
