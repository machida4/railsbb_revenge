class AddLastPostedAtToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :last_posted_at, :datetime
  end
end
