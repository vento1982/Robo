class AddToCommentToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :comment, :text
  end
end
