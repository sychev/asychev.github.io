class Jekyll::MarkdownHeader < Jekyll::Converters::Markdown
  def convert(content)
    super.gsub(/<h(\d) id="(.*?)">(.*)<\/h(\d)>/, '<h\1 id="\2">\3 <a href="#\2" style="text-decoration:none; color: inherit;"><span class="paragraph_link">¶</span></a></h\1>')
  end
end