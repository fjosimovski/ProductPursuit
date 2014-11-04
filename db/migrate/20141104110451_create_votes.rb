class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votes_number

      t.timestamps
    end
  end
end
