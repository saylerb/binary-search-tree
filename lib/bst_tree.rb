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
          current.left = Node.new(score, title)
        else
          insert(score, title, current.left)
        end
      end
    end
  end

  def sort(current_node = @root, array = [])
    unless current_node == nil
      sort(current_node.left, array)
      array << current_node.score
      sort(current_node.right, array) 
    end
    array
  end

  def include?(score_to_find, current=@root, depth = 0)
    if current == nil
     false 
    elsif current.score == score_to_find
     true
    elsif score_to_find > current.score 
      include?(score_to_find, current.right, depth)
    elsif score_to_find < current.score
      include?(score_to_find, current.left, depth)
    else
      false
    end
  end

  def depth_of(current=@root, depth=0)
    
  end


end

