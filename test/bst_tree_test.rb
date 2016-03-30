require "minitest/autorun"
require "minitest/pride"
require_relative  "../lib/bst_tree"

class BinarySearchTreeTest < Minitest::Test
  
  def test_that_class_tree_exist
    tree = BinaryTree.new
    assert_equal tree.class, BinaryTree
  end

  def test_that_tree_has_root
    root = Node.new(61, "Concussion")
    tree = BinaryTree.new(root)
    assert_equal 61, tree.root.score
    assert_equal "Concussion", tree.root.title
  end
  
  def test_that_you_can_insert_a_node
  end

end

