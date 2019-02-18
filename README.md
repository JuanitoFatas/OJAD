# OJAD

A Ruby Client to interact with [OJAD][ojad].

## Installation

Add this line to your application's Gemfile:

```ruby
gem "ojad"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ojad

## Usage

```
$ ojad くる
```

```
Group: 来る・来ます
Dictionary: くる
Polite: きます
Te: きて
Ta: きた
Negative: こない
Past negative: こなかった
Ba: くれば
Causative: こさせる
Passive: こられる
Imperative: こい
Potential: こられる
Volitional: こよう
```

```
$ ojad する
```

```
Group: 擦る・擦ります
Dictionary: する
Polite: すります
Te: すって
Ta: すった
Negative: すらない
Past negative: すらなかった
Ba: すれば
Causative: すらせる
Passive: すられる
Imperative: すれ
Potential: すれる
Volitional: すろう
--------------------------------------------------------------------------------
Group: 刷る・刷ります
Dictionary: する
Polite: すります
Te: すって
Ta: すった
Negative: すらない
Past negative: すらなかった
Ba: すれば
Causative: すらせる
Passive: すられる
Imperative: すれ
Potential: すれる
Volitional: すろう
--------------------------------------------------------------------------------
Group: する・します
Dictionary: する
Polite: します
Te: して
Ta: した
Negative: しない
Past negative: しなかった
Ba: すれば
Causative: させる
Passive: される
Imperative: しろ, せよ
Potential: できる
Volitional: しよう
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/hack` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JuanitoFatas/ojad. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Ojad project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JuanitoFatas/ojad/blob/master/CODE_OF_CONDUCT.md).

[ojad]: http://www.gavo.t.u-tokyo.ac.jp/ojad/search
[ojad-search]: http://www.gavo.t.u-tokyo.ac.jp/ojad/search
