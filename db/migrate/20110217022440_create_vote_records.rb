class CreateVoteRecords < ActiveRecord::Migration
  def self.up
    create_table :vote_records do |t|
      t.integer :voter_id
      t.integer :question_id
      t.boolean :is_yes

      t.timestamps
    end
  end

  def self.down
    drop_table :vote_records
  end
end
