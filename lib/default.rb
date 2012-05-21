# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

# Standard Nanoc Helpers
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Breadcrumbs
include Nanoc::Helpers::Capturing
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Tagging

PROCESSING_TYPES=["asciidoc", "markdown"]

# Write item with identifier /foo/ to /foo/index.html
def file_for(item)
  if item.binary?
    file_name(item)
  else
    article_name(item)
  end
end

def tags
  return @alltags if @alltags
  tags = []
  @items.each do |item|
    if item[:title].to_s.length > 0 && item.identifier != "/"
      unless item[:tags].nil?
        tags |= item[:tags]
      end
    end
  end
  @alltags = tags
end

# Write item with identifier /foo/ to /foo/index.html
def article_name(item)
  base = strip_processing_types_from(item.identifier)
  printf "%10s: %s\n", "article", "\'#{base}\'"
  base + 'index.html'
end

# Write item with identifier /foo/ to /foo.ext
def file_name(item)
  base = strip_processing_types_from(item.identifier)
  printf "%10s: %s\n", "file", "\'#{base}\'"
  extension = item[:extension] ? '.' + item[:extension] : ''
  base.chop + extension
end

def strip_processing_types_from(identifier)
  PROCESSING_TYPES.each do |type|
    identifier.gsub!(/^\/#{type}/, '')
  end
  identifier
end

def mkdir_p(path)
  output_dir = @site.config[:output_dir]
  FileUtils.mkdir_p(output_dir + path)
  path
end

def nothing
end
