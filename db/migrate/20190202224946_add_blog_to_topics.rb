class AddBlogToTopics < ActiveRecord::Migration[5.2]
  def change
    add_reference :topics, :blog, foreign_key: true
  end
end
