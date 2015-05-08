require 'spec_helper'

describe LinkRewriterFilter do

  it 'rewrites links without context' do
    doc = LinkRewriterFilter.to_document(fixture('index.md'), {})
    expect(doc.css('a').first.attr('href')).to eq('/docs/_docs/foo/')
  end

  it 'rewrites links with context' do
    doc = LinkRewriterFilter.to_document(fixture('index.md'), { :link_rewriter_prefix => '/baz/' })
    expect(doc.css('a').first.attr('href')).to eq('/baz/_docs/foo/')
  end
end
