class CreateQas < ActiveRecord::Migration
  def change
    create_table :qas do |t|
      t.string :question
      t.string :answer
      t.string :email

      t.timestamps
    end
    add_index :qas, [ :created_at ]
  end
end
