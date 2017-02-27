Pod::Spec.new do |s|
  s.name         = "objc-zmq"
  s.version      = "4.2.1"
  s.summary      = "Objective-C binding for ZeroMQ"
  s.description  = <<-DESC
    Bundled with ZeroMQ 4.2.1 library.

    This is an Objective-C version of the reference ZeroMQ object-oriented C API. It follows the guidelines laid out by the official "Guidelines for ZeroMQ bindings".
    DESC
  s.homepage     = "https://github.com/EduardoMartinezCatala/objc-zmq"
  s.license      = 'MIT'
  s.author       = { "Eduardo Martinez" => "Eduardo.Martinez.Catala@gmail.com" }
  s.source       = { :git => "https://github.com/EduardoMartinezCatala/objc-zmq.git", :tag => s.version.to_s }
  s.platform     = :osx, '10.6'
  s.osx.deployment_target = '10.6'
  s.requires_arc = true
  s.source_files = 'Classes/cppzmq/*.hpp', 'Classes/objc-zmq/*.{h,m}', 'Classes/zeromq/*.h'
  s.public_header_files = 'Classes/**/*.{h,hpp}'
  s.vendored_libraries = 'Library/zeromq-4.2.1/static/libzmq.a'
  s.libraries = 'c++'
end
