class CreateOneOnOnes < ActiveRecord::Migration[5.1]
  def change
    create_table :one_on_ones do |t|
      t.references :owner
      t.references :guest
      t.datetime :start
      t.datetime :end
      t.integer :duration

      t.timestamps
    end
  end
end
