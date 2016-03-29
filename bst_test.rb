require "minitest/autorun"
require "minitest/pride"
require "./bst"


class BinarySearchTreeTest < Minitest::Test
  
  def test_if_creates_class_binary_search_tree
    tree = BinaryTree.new(0).class
    assert_equal BinaryTree, tree
  end

end

