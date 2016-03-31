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
    tree = BinarySearchTree.new
    tree.insert(83, "Deadpool")
    tree.insert(93, "Star Wars: The Force Awakens")
    tree.insert(75, "The Hateful Eight")
    assert_equal 1, tree.depth_of(75)
  end

  def test_outputting_array_of_sorted_nodes
    tree = BinarySearchTree.new
    tree.insert(83, "Deadpool")
    tree.insert(93, "Star Wars: The Force Awakens")
    tree.insert(75, "The Hateful Eight")
    expected_result = [{"The Hateful Eight" => 75}, {"Deadpool" => 83}, {"Star Wars: The Force Awakens" => 93}]
    assert_equal expected_result, tree.sort
  end
  
  def test_outputting_tree_depth
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(83, "Deadpool")
    assert_equal 1, tree.insert(93, "Star Wars")
  end

  def test_maximum
    tree = BinarySearchTree.new
    tree.load_file
    assert_equal ({"The Little Engine That Could" => 100}), tree.max
  end

  def test_minimum
    tree = BinarySearchTree.new
    tree.load_file
    assert_equal ({"Cruel Intentions" => 0}), tree.min
  end


  def test_load_file
    tree = BinarySearchTree.new
    tree.load_file
    assert_equal 1, tree.depth_of(80)
    assert [{" I Love You Phillip Morris"=>7},
         {" A Ballerina's Tale"=>9}, {" Love"=>11}, {" Meet My Valentine"=>17},
         {" Experimenter"=>55},
         {" The Land Before Time XIV: Journey of the Brave"=>65},
         {" Hellions"=>67},
         {" Hannibal Buress: Animal Furnace"=>71},
         {" French Dirty"=>75},
         {" Hannibal Buress: Comedy Camisado"=>80}], tree.sort
    end
end

