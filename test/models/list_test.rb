require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "if title is empty, it should be invalid" do
  	list = List.new
  	list.url= 'urlTest.com'
    assert_not list.valid?
  end

   test "if url is empty, it should be invalid" do
  	list = List.new
  	list.title= 'Lista1'
    assert_not list.valid?
  end

   test "if url is not unique, it should be invalid" do
  	list = List.new 
  	list.title='Lista1'
  	list.url= 'urlTest.com'
  	list.save
  	list2 = List.new 
  	list2.title='Lista2'
  	list2.url= 'urlTest.com'
    assert_not list2.valid?
  end

end
