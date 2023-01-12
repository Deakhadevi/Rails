class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :playername
      t.string :teamname
      t.string :roles
      t.float :amount
      t.integer :totalruns
      t.integer :totalwickets
      t.integer :internationalranking
      t.string :country


      t.timestamps
    end
  end
end
