# LinkRewriterFilter


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'link-rewriter-filter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install link-rewriter-filter

## Usage

Place this filter after your markdown filter.

You can use the `link_rewriter_prefix` context key to define a new prefix. Otherwise, the default is `/docs/`.
