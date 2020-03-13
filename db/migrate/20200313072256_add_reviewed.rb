class AddReviewed < ActiveRecord::Migration[5.0]
  def change
  	add_column :confessions, :review, :boolean, default:false
  end
end
