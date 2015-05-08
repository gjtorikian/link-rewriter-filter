require 'bundler/setup'
require_relative "../lib/link-rewriter-filter"
require 'nokogiri'

RSpec.configure do |config|
  FIXTURES_DIR = File.expand_path('../fixture_site', __FILE__)
  def fixtures_dir(*paths)
    File.join(FIXTURES_DIR, *paths)
  end

  def fixture(name)
    File.open(File.join(fixtures_dir, name)).read
  end

  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate

  # Run in a random order
  config.order = :random
end
