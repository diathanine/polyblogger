class AddPenNameToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :pen_name, :string
  end
end
