file = ENV["HOME"] + "/.org/agenda.org"

File.open(file, "w") do |f|
  f.puts(ENV["ORG_DEFAULT_NOTES_DIR"] + "todo.org")
  f.puts(ENV["ORG_DEFAULT_NOTES_DIR"] + "project.org")
  f.puts(ENV["ORG_DEFAULT_NOTES_DIR"] + "iterate.org")
end
