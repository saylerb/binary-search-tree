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
    depth_of(score)
  end

  def sort(current_node = @root, array = [])
    unless current_node == nil
      sort(current_node.left, array)
      array << {current_node.title => current_node.score}
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

  def depth_of(score, current=@root, depth=0)
   if current == nil
    nil
   else
     if current.score == score
       depth
     elsif score > current.score
       depth_of(score, current.right, depth +=1)
     elsif score < current.score
       depth_of(score, current.left, depth +=1)
     end
   end
  end


#  def max(current_node=@root)
#    until current_node.right== nil
#      current_node = current_node.right
#    end
#    max_node = Hash[current_node.title, current_node.score]
#    max_node
#  end


  def max(current=@root)
     if current.right == nil
       max = {current.title => current.score}
     else
       max(current.right)
     end
   end

  def min(current=@root)
     if current.left == nil
       min = {current.title => current.score}
     else
       min(current.left)
     end
   end
 


end

