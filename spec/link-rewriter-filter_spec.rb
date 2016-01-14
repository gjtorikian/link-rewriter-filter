require 'spec_helper'

describe LinkRewriterFilter do

  it 'rewrites links without context' do
    filter = LinkRewriterFilter.new \
      "<a href='_docs/foo.md'>this page</a>"

    doc = filter.call
    expect(doc.css('a').first.attr('href')).to eq('/docs/_docs/foo/')
  end

  it 'rewrites links with context' do
    filter = LinkRewriterFilter.new \
      "<a href='_docs/foo.md'>this page</a>", { :link_rewriter_prefix => '/baz/' }

    doc = filter.call
    expect(doc.css('a').first.attr('href')).to eq('/baz/_docs/foo/')
  end
end
