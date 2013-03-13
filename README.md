Intellua
========

A Lua module for [LuaDist](http://luadist.org), which replaces `require` by a custom implementation, which installs missing packages on demand. Since the module name does not usually match the package name, it contains a database of module - package mappings.

Usage
-----

    > require = require "intellua"

The standard require is replaced by a new function. When used with an existing package, it works as expected:

    > require "lfs"

When a missing package is required, LuaDist is used to install the package and its dependencies. The package is then required again and ready to be used:

    > require "moon"
    Finding out available versions of moonscript...
    Getting moonscript-0.2.2 (binary)...
    Finding out available versions of lpeg...
    Getting lpeg-0.10.2 (binary)...
    Finding out available versions of alt-getopt...
    Getting alt-getopt-0.7 (binary)...

License
-------

Copyright (c) 2013 Michal Kottman

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.