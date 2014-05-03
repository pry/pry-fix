PryFix::Commands.create_command 'replace-it' do
  description 'Replace current line with the previous pry input'

  def process
    filename, line = Pry::Command::Edit::FileAndLineLocator.from_binding(target)
    code = Pry.history.to_a[-1]

    lines = File.readlines(filename)
    lines[line-1][/\A\s*(.*)\s*\z/, 1] = code
    File.write(filename, lines.join(''))
  end
end
