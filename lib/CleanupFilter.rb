# Cleans up junk from AsciiDoc generation.
class CleanupFilter < Nanoc::Filter
  identifier :cleanup
  type       :text

  def run(content, params={})
    emit = true
    filtered = []
    content.split("\n").each do |line|
      case line
      when Regexp.new(Regexp.escape('<style type'))
        emit = false
      when Regexp.new(Regexp.escape('</style>'))
        emit = true
      when Regexp.new(Regexp.escape('<html xmlns'))
      when Regexp.new(Regexp.escape('</html>'))
      when Regexp.new(Regexp.escape('<body class="article"'))
        filtered << %Q{<!-- begin article -->}
        filtered << line.gsub('body', 'div')
      when Regexp.new(Regexp.escape('</body>'))
        filtered << line.gsub('body', 'div')
        filtered << %Q{<!-- end article -->}
      when Regexp.new(Regexp.escape('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"'))
      when Regexp.new(Regexp.escape('"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">'))
      when Regexp.new(Regexp.escape('<head>'))
        emit = false
      when Regexp.new(Regexp.escape('</head>'))
        emit = true
      when Regexp.new(Regexp.escape('<script type="text/javascript">'))
        emit = false
      when Regexp.new(Regexp.escape('</script>'))
        filtered << line.gsub('</script>','')
        emit = true
      else
        filtered << line if emit
      end
    end
    filtered.join("\n")
  end

end
