## Firedragon

[![Circle CI](https://circleci.com/gh/ariejan/firedragon/tree/master.svg?style=svg&circle-token=1d90c96547f475a82ffdcf0e16cb66753eea4484)](https://circleci.com/gh/ariejan/firedragon/tree/master)

_Firedragon - sharing stuff online._

## About

Firedragon is an personal app for sharing thinngs online, like
URLs, images and much more!

## Current state

Firedragon is far from complete and may not work as expected at this point.

## Installation

Firedragon is a Ruby on Rails 4.2 application, after cloning the repository:

 * Configure your database in `config/database.yml`
 * Install dependencies: `bundle install`
 * Setup your database with `rake db:create` and `rake db:migrate`

To run the application: `rails s` and to turn the 
test suite use `rake test`.

## Tests

Firedragon is tested with MiniTest. Features are also written using MiniTest
and Capybara.

## Contributing

Yes, please! Keep in mind the following:

 1. Found a bug? I prefer a pull request with a failing test over one with
    an untested fix.
 2. If you plan to develop a new feature, open an issue to discuss it first.

## License

Firedragon is released unde the BSD 3-Clause license:

Copyright (c) 2015, Ariejan de Vroom

All rights reserved.

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
    this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
    this list of conditions and the following disclaimer in the documentation 
    and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors 
    may be used to endorse or promote products derived from this software 
    without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.
