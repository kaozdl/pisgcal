class CreateOneOnOnes < ActiveRecord::Migration[6.0]
  def change
    create_table :one_on_ones do |t|
      t.timestamps
    end

    add_reference(:one_on_ones, :employee, foreign_key: { to_table: :users })
    add_reference(:one_on_ones, :manager, foreign_key: { to_table: :users })
  end
end
