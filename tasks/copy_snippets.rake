desc 'Copies all the snippets into Xcode'
task :default do
  `cp *.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippets/.`
end