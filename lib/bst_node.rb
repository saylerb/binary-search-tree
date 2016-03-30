class Node
  attr_reader :score, :title
  attr_accessor :right, :left

  def initialize(score, title, right = nil, left = nil)
    @score = score 
    @title = title
    @right = right
    @left  = left
  end
  
end
