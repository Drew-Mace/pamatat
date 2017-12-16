# Pamatat (Pamätať)
Pamätať is Slovak for remember. With Pamatat create a to-do list so that no task gets left behind.

## Usage
Once installed you can navigate to `/pamatat/tasks` and start adding tasks, quick and easy.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'pamatat'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install pamatat
```

## Contributing
To make contributions fork the repo.

To test the engine inside a rails application fork the repo and add:
```ruby
gem 'pamatat', path: 'yourpath/pamatat'
```

then in config/routes.rb add

``` ruby
mount Pamatat::Engine, at: "/pamatat"
```
After that you install using
```ruby
bin/rails pamatat:install:migrations
```
and run migration
```ruby
bin/rails db:migrate
```

## To-Do for the to-do's

- [] If a task is marked as "important" it will be moved to the top of the list.
- [] Once a task is marked "complete" the text will have a line through it or color change.
- [] Marking a task as "important" or "complete" should be able to be done with a single click.
- [] Edit `_form.html.erb` to use bootstrap styling so its more visually pleasing.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
