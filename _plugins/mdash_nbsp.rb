class Jekyll::MarkdownHeader < Jekyll::Converters::Markdown
  def convert(content)
    super.gsub(' —', '&nbsp;—')
  end
end