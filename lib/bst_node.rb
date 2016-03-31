class Node
  attr_accessor :right, :left, :score, :title

  def initialize(score, title)
    @score = score 
    @title = title
    @right = nil 
    @left  = nil 
  end

 end
