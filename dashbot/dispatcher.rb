class Dispatcher
  include Parser
  
  def initialize(text)
    input = split_input(text)
    @command = input[:command]
    @phase = input[:phase]
    @announcement = input[:announcement]
  end

end
