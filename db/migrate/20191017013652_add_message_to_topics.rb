class AddMessageToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :message, :text
  end
end
