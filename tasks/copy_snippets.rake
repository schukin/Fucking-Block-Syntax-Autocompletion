desc 'Copies all the snippets into Xcode'
task :default do
  code_snippet_path = '~/Library/Developer/Xcode/UserData/CodeSnippets/'
  `cp *.codesnippet #{code_snippet_path}.`
  puts "Fucking block syntax snippets have been copied to #{code_snippet_path}"
end