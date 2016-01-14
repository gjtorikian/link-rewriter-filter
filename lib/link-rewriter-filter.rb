require 'html/pipeline'

class LinkRewriterFilter < HTML::Pipeline::Filter
  LINK_REGEX = /(.+?)\.md$/

  def call
    prefix = context[:link_rewriter_prefix] || '/docs/'
    doc.search('a').each do |a|
      next if a['href'].nil? || a['href'].blank?
      a['href'] = "#{prefix}#{$1}/" if a['href'] =~ LINK_REGEX
    end

    doc
  end
end
