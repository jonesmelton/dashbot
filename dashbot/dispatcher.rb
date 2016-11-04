class Dispatcher
  include Parser
  
  def initialize(text)
    input = split_input(text)
    @command = input[:command]
    @phase = parse_phase(input[:phase])
    @announcement = input[:announcement]
  end
  
  def post
    HTTP.post("#{DASHBOARD_ROOT}/announce-#{@phase}",
              json: {auth_token: ENV["auth_token"],
                     text: @announcement})
  end

  private

  def parse_phase(phase)
    case phase
    when "1", "p1", "phase-1"
      "p1"
    when "2", "p2", "phase-2"
      "p2"
    when "3", "p3", "phase-3"
      "p3"
    end
  end


end
