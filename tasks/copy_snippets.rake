desc 'Copies all the snippets into Xcode'
task :default do
  code_snippet_path = File.expand_path('~/Library/Developer/Xcode/UserData/CodeSnippets/')
  `mkdir -p '#{code_snippet_path}'`
  `cp *.codesnippet '#{code_snippet_path}'`
  puts "Fucking block syntax snippets have been copied to #{code_snippet_path}"

  xcode=`ps x -o comm | grep Xcode\\$`
  if xcode != ''
    puts "Please restart XCode for the changes to take effect.";
  end
end
