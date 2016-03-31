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
    tree.insert(61, "Concussion")
    assert_equal 61 , tree.root.score
    assert_equal "Concussion", tree.root.title 

  end

  def test_that_you_can_insert_a_node
    # binding.pry
    tree = BinarySearchTree.new
    tree.insert(61, "Concussion")
    assert_equal 61 , tree.root.score
    assert_equal "Concussion", tree.root.title
  end 

  def test_adding_node_to_left_side
    tree = BinarySearchTree.new
    tree.insert(82, "The Revenant")
    tree.insert(61, "Concussion")
    assert_equal 61, tree.root.left.score
    assert_equal "Concussion", tree.root.left.title
  end

  def test_adding_node_to_right_side
    tree = BinarySearchTree.new
    tree.insert(61, "Concussion")
    tree.insert(82, "The Revenant")
    assert_equal 61, tree.root.score
    assert_equal 82, tree.root.right.score
    assert_equal "The Revenant", tree.root.right.title
  end

  def test_adding_node_returns_depth
    skip
    tree = BinarySearchTree.new
    depth_1 = tree.insert(61, "Bill % Ted")
    depth_2 = tree.insert(16, "Johnny English")
    depth_3 = tree.insert(92, "Sharknado 3")
    depth_4 = tree.insert(50, "Hannibal")

    assert_equal 0, depth_1
    assert_equal 1, depth_2
    assert_equal 1, depth_3
    assert_equal 2, depth_4
  end


  def test_include_method
    tree = BinarySearchTree.new
    tree.insert(61, "Concussion")
    tree.insert(82, "The Revenant")
    assert tree.include?(61)
    assert tree.include?(82)
    refute tree.include?(100)
  end

  def test_include_returns_depth_number
    skip
  end

  def test_outputting_array_of_sorted_nodes
    tree = BinarySearchTree.new
    tree.insert(83, "Deadpool")
    tree.insert(93, "Star Wars: The Force Awakens")
    tree.insert(75, "The Hateful Eight")
    assert_equal [75, 83, 93], tree.sort
  end
  
  def test_outputting_tree_depth
    skip
    tree = BinarySearchTree.new
    depth_1 = tree.insert(83, "Deadpool")
    depth_2 = tree.insert(93, "Star Wars")
    assert_equal 0, depth_1
    assert_equal 1, depth_2
  end
end

