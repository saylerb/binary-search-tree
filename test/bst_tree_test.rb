require "minitest/autorun"
require "minitest/pride"
require_relative  "../lib/bst_tree"

require "pry"
class BinarySearchTreeTest < Minitest::Test
  
  def test_that_class_tree_exist
    tree = BinarySearchTree.new
    assert_equal tree.class, BinarySearchTree
  end

  def test_setting_root
    tree = BinarySearchTree.new
    tree.root = Node.new(61, "Concussion")
    assert_equal 61 , tree.root.score
    assert_equal "Concussion", tree.root.title 

  end

  def test_that_you_can_insert_a_node
    # binding.pry
    tree = BinarySearchTree.new
    tree.insert(61, "Concussion")
    assert_equal 61, tree.root.score
    assert_equal "Concussion", tree.root.title
  end 

end

