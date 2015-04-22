class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :Name
      t.string :Address
      t.string :Contact_no
     
      t.timestamps null: false
    end
  end
end
