require "minitest/autorun"
require "minitest/pride"
require_relative  "../lib/bst_node"
require_relative "../lib/bst_tree"

class BinarySearchNodeTest < Minitest::Test
  
  def test_if_creates_class_node
    node = Node.new(99, "Zootopia")
    assert_equal Node, node.class
  end

  def test_that_class_node_can_take_value
    node = Node.new(99, "Zootopia")
    assert_equal 99, node.score
    assert_equal "Zootopia", node.title
  end

  def test_that_node_has_a_right_node
    right_node = Node.new(83, "Deadpool")
    root = Node.new(90, "10 Cloverfield Lane")
    root.right = right_node
    assert_equal root.right.score , 83 
    assert_equal root.right.title , "Deadpool"
  end

  def test_that_node_has_a_left_node
    left_node = Node.new(83, "Deadpool")
    root = Node.new(90, "10 Cloverfield Lane")
    root.left = left_node
    assert_equal left_node , root.left
  end

  def test_setting_children_nodes
    node = Node.new(93, "Star Wars: The Force Awakens")
    node.left = Node.new(75, "The Hateful Eight")
    assert_equal 75, node.left.score 
  end

  end

