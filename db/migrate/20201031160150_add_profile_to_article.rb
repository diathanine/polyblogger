class AddProfileToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :profile, null: false, foreign_key: true
  end
end
