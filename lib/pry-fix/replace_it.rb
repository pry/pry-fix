# See http://showterm.io/7ab9909ec681bca870740
# Replace a binding.pry with the previous line of pry history.

Pry.config.commands.command "replace-it" do
  filename, line = Pry::Command::Edit::FileAndLineLocator.from_binding(target)
  code = Pry.history.to_a[-1]

  lines = File.readlines(filename)
  lines[line-1][/\A\s*(.*)\s*\z/, 1] = code
  File.write(filename, lines.join(''))
end
