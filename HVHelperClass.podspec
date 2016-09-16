
Pod::Spec.new do |s|

  s.name         = "HVHelperClass"
  s.version      = "1.1.2"
  s.summary      = "Common code that helps in project"
  s.description  = <<-DESC
		   Common code that helps in regular projects
                   DESC

  s.homepage     = "https://bitbucket.org/HarshalValanda/hvhelperclass"

  s.license      = { :type => 'MIT', :text => <<-LICENSE
                  MIT License

Copyright (c) [2016] [HVHelperClass]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “HVHelperClass”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
                LICENSE
              }
 

   s.authors     = { "Harshal Valanda" => "valanda.harshal15@gmail.com", "Mrugesh Tank" => "mrugeshtank@gmail.com", "Nirav Sapariya" => "nirav.sapariya03@gmail.com"}
   s.platform    = :ios, "8.0"

   s.source      = { :git => "https://github.com/mrugeshtank/HVHelperClass", :tag => "v1.1.2" }
  s.source_files  = "HVHelperClass/HVHelperClass.h"


  s.requires_arc = true

end
