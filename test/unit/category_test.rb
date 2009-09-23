require File.dirname(__FILE__) + '/../test_helper'
# require 'test/unit'

class CategoryTest < ActiveSupport::TestCase
  
  fixtures:categories
  
  def setup
    @r1 = Category.new( "title" => "Ruby", "description" => "Description of Ruby" )
    
  end
 
  # def test_title_should_not_be_blank
  #   category.create :title =>'test category'
  #   assert_equal 'test category', category.title, 'category title should be set'
  # end
  
 # def test_title_should_not_be_blank
 #   category.create :title =>'test category'
 #  assert_valid (category)
 # end
 
 def test_able_to_create_new_category
   
   category = Category.new
   assert !category.save, ""
 end

  def test_title_should_be_Ruby
    assert_equal( "Ruby", @r1.title)  
  end

  def test_search_category
    #test ability to create and save a new category using search record from categories.yml
    search_category = Category.new :title => categories(:search).title,
                                 :description => categories(:search).description,
                                 :created_at => categories(:search).created_at
    
    #test ability to save
    assert search_category.save
    
    #test the ability to create and read a database record
    search_category_copy = Category.find(search_category.id)
    assert_equal search_category.title, search_category_copy.title
    
    #test updating by changing title and saving
    search_category.title = "Search Title Changed"
    assert search_category.save
    
    #test title cannot be blank
     search_category.reload
     search_category.title = ""
     assert !search_category.save
 
    #test ability to delete a category
    assert search_category.destroy
    
 
  end

end
