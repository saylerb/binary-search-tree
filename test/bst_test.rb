require "minitest/autorun"
require "minitest/pride"
require "./bst"


class BinarySearchTreeTest < Minitest::Test
  
  def test_if_creates_class_binary_search_tree
    tree = BinaryTree.new.class
    assert_equal BinaryTree, tree
  end

  def test_that_class_tree_can_take_value
    tree = BinaryTree.new("value")
    assert_equal "value", tree.value
  end

  def test_that_tree_has_a_right_node
    tree = BinaryTree.new(0, 1, 2)
    assert_equal 1, tree.right
  end

  def test_that_tree_has_a_right_node
    tree = BinaryTree.new(0, 1, 2)
    assert_equal 2, tree.left
  end


end

