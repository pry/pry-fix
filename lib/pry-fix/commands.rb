module PryFix
  Commands = Pry::CommandSet.new
end

command_glob = File.expand_path('../commands/*.rb', __FILE__)

Dir[command_glob].each do |command|
  require command
end

Pry.commands.import PryFix::Commands
