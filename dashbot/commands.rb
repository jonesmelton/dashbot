# coding: utf-8
require_relative 'parsers'
module DashBot
  module Commands
    class Announce < SlackRubyBot::Commands::Base
      command 'announce' do |client, data, _match|
        puts "data\n⬇️\n⬇️"
        # p split_input(data[:text])
        client.say(channel: data.channel, text: data)       
      end
    end
  end
end
