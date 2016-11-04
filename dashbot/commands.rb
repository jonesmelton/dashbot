# coding: utf-8
module DashBot
  module Commands
    class Announce < SlackRubyBot::Commands::Base
      command 'announce' do |client, data, _match|
        message = Dispatcher.new(data.text)
        message.post
        client.say(channel: data.channel, text: "what")
      end
    end
  end
end
