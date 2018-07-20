require "test_helper"

class RecipeTest < ActiveSupport::TestCase
    def setup
        @recipe = Recipe.new(name: "vegetable", description: "great vegetable recipe")
    end
    
    test "recipe sholud be valid" do
      assert @recipe.valid?
    end
    
    test "name should be present" do
        @recipe.name = " "
        assert_not @recipe.valid?
    end
    
    test "description should be present" do
        @recipe.description = " "
        assert_not @recipe.valid?
    end
    
    test "description sholudn't be less than 5 characteres" do
      @recipe.description = "a" * 4
      assert_not @recipe.valid?
    end
    
    test "description sholudn't be more than 500 characteres" do
      @recipe.description = "a" * 501
      assert_not @recipe.valid?
    end
end