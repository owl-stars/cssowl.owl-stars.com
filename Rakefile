desc "Generate doc sources"
task :docs do
  puts "Generating docs from cssowl sources."
  system "npm link librarianowl" unless Dir.exists?("node_modules/librarianowl")
  system "resources/docs/bin"
end

desc "Generate jsfiddle source"
task :fiddle do
  require 'json'
  puts "Generating jsfiddle snippet."
  conf = JSON.parse(File.read("bower_components/cssowl/bower.json"))
  contents = ""
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/absolute.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/after.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/before.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/coords.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/relative.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/sprite.scss")
  contents = contents + File.read("bower_components/cssowl/lib/scss/cssowl/text.scss")
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
  contents = contents + ".hide {\n"
  contents = contents + "  @extend %cssowl-text-hide();\n"
  contents = contents + "}\n"

  Dir.mkdir('tmp') unless Dir.exists?('tmp')
  File.write('tmp/jsfiddle.scss', contents)
end
