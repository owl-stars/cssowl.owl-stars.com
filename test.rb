require 'html-proofer'

raise IOError, 'Directory ./build does not exist. Run `middleman build` before running tests' unless Dir.exists?('./build')

HTMLProofer.check_directory('./build', {
  :check_html => true,
  :check_favicon => true,
  :check_img_http => true,
  :disable_external => true,
  :empty_alt_ignore => true,
  :internal_domains => ["https://cssowl.owl-stars.com"]
  #:http_status_ignore => [0,999,403,401]
}).run
