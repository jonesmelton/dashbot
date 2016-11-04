class Parser

  def self.split_input(data)
    input = data.split(" ")
    {command: input[1],
     phase: input[2],
     announcement: input[3..-1].join(" ")}
  end

end
