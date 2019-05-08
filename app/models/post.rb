class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # accepts_nested_attributes_for :categories
  # do not use because of all the custom rules in writer below
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      # only creates category if it has a name
      if category_attributes[:name].present?
        category = Category.find_or_create_by(category_attribute)
        # does not duplicate categories for a post
        if !self.categories.include?(category)
          self.categories << category
        end
      end
    end
  end

end
