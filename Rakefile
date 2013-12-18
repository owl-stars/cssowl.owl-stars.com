desc "Generate doc sources"
task :docs do
  puts "Generating docs from cssowl sources."
  system "npm link librarianowl" unless Dir.exists?("node_modules/librarianowl")
  system "tools/docs-bin"
end

desc "Generate jsfiddle source"
task :fiddle do
  require 'json'
  puts "Generating jsfiddle snippet."
  conf = JSON.parse(File.read("bower_components/cssowl/bower.json"))
  contents = ""
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/position.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/sprite.scss")
  contents = contents.gsub(/^\/\/.*?\n/, "")
  contents = contents.gsub(/^@import.*?\n/, "")
  contents = "// ------------------------------------\n" + contents
  contents = "// cssowl v" + conf["version"] + "\n" + contents
  contents = "// Insert your code at to the bottom...\n" + contents
  contents = "// ------------------------------------\n" + contents
  contents = "\n" + contents

  contents = contents + "\n"
  contents = contents + "// ------------------------------------\n"
  contents = contents + "// Place your styles here\n"
  contents = contents + "// ------------------------------------\n"
  contents = contents + "\n"
  contents = contents + "$sprite: url('http://cssowl.owl-stars.com/assets/img/sprite.png');"
  contents = contents + "\n"
  contents = contents + "#title {\n"
  contents = contents + "  @include cssowl-sprite-replace(-10px, -10px, 91px, 95px, $sprite);\n"
  contents = contents + "}\n"

  Dir.mkdir('tmp') unless Dir.exists?('tmp')
  File.write('tmp/jsfiddle.scss', contents)
end
