module SlackMathbot
  module Commands
    class Announce < SlackRubyBot::Commands::Base
      command 'announce' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end
