require 'builder'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/404.html", :layout => false
page "/sitemap.xml", :layout => false

###
# Helpers
###

# Reload the browser automatically whenever files change
activate :livereload

# Cody syntax highlightning
activate :syntax, :line_numbers => false

# Deploy-specific configuration
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :rsync
  deploy.host   = "cssowl.owl-stars.com"
  deploy.path   = "/var/www/cssowl.owl-stars.com/htdocs"
end

###
# Assets
###

set :js_dir, 'assets/js'
set :css_dir, 'assets/css'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true

sprockets.append_path File.join "#{root}", "bower_components"

###
# Environments
###

# Development-specific configuration
configure :development do
  activate :google_analytics do |ga|
    ga.tracking_id = false
  end
end

# Build-specific configuration
configure :build do
  # cache
  activate :minify_css
  activate :minify_javascript
  # others
  activate :cache_buster
  activate :favicon_maker
  activate :relative_assets
  # analytics
  activate :google_analytics do |ga|
    ga.anonymize_ip = true
    ga.tracking_id = data.site.ga_account
  end
end
