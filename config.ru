$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'bot_core'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    DashBot::Bot.run
  rescue Exception => e
    STDERR.puts "Error #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run DashBot::Web
