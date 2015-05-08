require 'html/pipeline'

class LinkRewriterFilter < HTML::Pipeline::MarkdownFilter
  VERSION = '0.0.1'
  LINK_REGEX = /(.+?)\.md$/

  def initialize(text, context = nil, result = nil)
    @prefix = context[:link_rewriter_prefix] || '/docs/'

    super text, context, result
  end

  def call
    html = super
    doc = Nokogiri::HTML(html)

    doc.search("a").each do |a|
      next if a['href'].nil?
      a["href"] = "#{@prefix}#{$1}/" if a['href'] =~ LINK_REGEX
    end

    doc.to_s
  end
end
