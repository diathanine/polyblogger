class AddBodyAndUserToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :username, :string
    add_column :comments, :text, :text
  end
end
