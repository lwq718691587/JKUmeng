#
# Be sure to run `pod lib lint JKUmeng.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JKUmeng'
  s.version          = '0.1.0'
  s.summary          = '友盟统计库，将统计初始化放到load方法里'

  s.homepage         = 'https://github.com/lwq718691587/JKUmeng'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuweiqiang' => 'liuweiqiang@jianke.com' }
  s.source           = { :git => 'https://github.com/lwq718691587/JKUmeng.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'JKUmeng/**/*'
  s.dependency 'Aspects'
  s.dependency 'UMengAnalytics'

end
