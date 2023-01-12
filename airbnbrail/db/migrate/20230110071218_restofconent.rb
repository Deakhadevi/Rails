class Restofconent < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :description, :string
    add_column :properties, :typeofresidence, :string
    add_column :properties, :rules, :string
    add_column :properties, :priceperday, :float
    add_column :properties, :rating, :float
  end
end
