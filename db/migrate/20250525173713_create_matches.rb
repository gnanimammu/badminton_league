class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.integer :winner_id
      t.integer :loser_id

      t.timestamps
    end
  end
end
