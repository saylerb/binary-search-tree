class Node
  attr_reader :score, :title
  attr_accessor :right, :left

  def initialize(score, title)
    @score = score 
    @title = title
    @right = nil 
    @left  = nil 
  end
  
end
