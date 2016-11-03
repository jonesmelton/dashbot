require 'sinatra/base'

module DashBot
  class Web < Sinatra::Base
    get '/' do
      "testing the bottt"
    end
  end
end
