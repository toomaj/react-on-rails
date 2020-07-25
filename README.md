### React + Rails + Devise on jRuby

```
rvm install 2.5.7
rvm install jruby-9.2.12.0
rvm --default use jruby-9.2.12.0
gem install bundler
bundle install
bundle exec rails db:create db:migrate
bundle exec rails s
```
[localhost:3000]()

#### Compile
`
bundle
bundle update
yarn install
bundle exec rails assets:precompile
bundle exec warble executable war`

