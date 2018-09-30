# Based on: https://stackoverflow.com/a/36769049
# Available to use in pages as: {{ page.last-modified-date }}
# Or: {{ page.last-modified-date | date: '%B %d, %Y' }}

Jekyll::Hooks.register([:pages, :posts], :post_render) do |post|

  # get the current post last modified time
  modification_time = File.mtime( post.path )
  
  # inject modification_time in post's datas.
  post.data['last-modified-date'] = modification_time

end