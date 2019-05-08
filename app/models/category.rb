class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def downcase_name
    name.downcase_name
  end
end
