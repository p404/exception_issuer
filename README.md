# ExceptionIssuer

The Exeception Issuer gem provides a notifier who sends the exeception
error to a Github issue.

TODO
TODO
TODO

## Getting Started

Add the following line to your application's Gemfile:

```ruby
gem 'exception_issuer'
```

## Use
```ruby
Rails.application.config.middleware.use ExceptionNotification::Rack,
 :github => {
    :access_token => '109as9sa9das8d',
    :repository => 'p404/exception_issuer'
  }
```
