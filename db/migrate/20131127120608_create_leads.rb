class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :fname
      t.string :lname
      t.string :company
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
