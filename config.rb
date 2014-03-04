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
  deploy.clean  = true
  deploy.host   = "cssowl.owl-stars.com"
  deploy.path   = "/var/www/cssowl/htdocs"
  deploy.flags  = "-avz --chmod=Dg+s,ug+w,+r"
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

after_configuration do
  sprockets.append_path File.join "#{root}", "bower_components"
end

###
# Environments
###

compass_config do |config|
  config.sass_options = {
    :style => :expanded,
    :line_comments => false
  }
end

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
  activate :minify_html
  activate :minify_javascript
  activate :imageoptim do |options|
    options.pngout_options    = false
    options.advpng_options    = false
  end
  # others
  activate :cache_buster
  activate :favicon_maker, :icons => {
    "favicon_base.png" => [
      { icon: "apple-touch-icon-144x144-precomposed.png" },
      { icon: "apple-touch-icon-120x120-precomposed.png" },
      { icon: "apple-touch-icon-114x114-precomposed.png" },
      { icon: "apple-touch-icon-57x57-precomposed.png" },
      { icon: "apple-touch-icon-72x72-precomposed.png" },
      { icon: "apple-touch-icon-precomposed.png", size: "57x57" },
      { icon: "favicon.png", size: "16x16" },
      { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
    ]
  }
  # analytics
  activate :google_analytics do |ga|
    ga.anonymize_ip = true
    ga.tracking_id = data.site.ga_account
  end
end
