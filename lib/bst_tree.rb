require_relative "bst_node"

class BinarySearchTree

  attr_accessor :root

  def initialize
    @root = nil  
  end

  # TODO: break into insert left or right
  def insert(score, title, current=@root)
    if current == nil
      @root = Node.new(score, title)
    else
      if score > current.score
        if current.right == nil
          current.right = Node.new(score, title)
        else
          insert(score, title, current.right)
        end
      
      elsif score < current.score
        if current.left == nil
          current.left = Node.new(score,title)
        else
          insert(score, title, current.left)
        end
      end
    end
  end
end

