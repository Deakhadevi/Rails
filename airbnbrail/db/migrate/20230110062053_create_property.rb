class CreateProperty < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :propertyname
      t.timestamps
    end
  end
end
