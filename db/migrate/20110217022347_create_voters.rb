class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
