# coding: utf-8
module DashBot
  module Commands
    class Announce < SlackRubyBot::Commands::Base
      command 'announce' do |client, data, _match|
        puts "data\n⬇️\n⬇️"
        message = Dispatcher.new(data.text)
        client.say(channel: data.channel, text: message)
      end
    end
  end
end
