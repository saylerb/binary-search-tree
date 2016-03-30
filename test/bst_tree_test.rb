require "minitest/autorun"
require "minitest/pride"
require_relative  "../lib/bst_tree"

class BinarySearchTreeTest < Minitest::Test
  
  def test_that_class_tree_exist
    tree = BinaryTree.new
    assert tree 
  end

end

