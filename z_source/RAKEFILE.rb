#
# to use: rake on_update "jekyll"
#
# adapted from http://gist.github.com/113226
 
desc "Automatically run something when code is changed"
task :on_update do
  require 'find'
  files = {}
 
  loop do
    changed = false
    Find.find(File.dirname(__FILE__)+"/source") do |file|
      next unless (file =~ /\.md$/) || (file =~ /\.html$/) || (file =~ /\.css$/) 
      ctime = File.ctime(file).to_i
 
      if ctime != files[file]
        files[file] = ctime
        changed = true
      end
    end
 
    if changed
      system ARGV[1]
      puts "\nWaiting for changes"
    end
 
    sleep 1
  end
end