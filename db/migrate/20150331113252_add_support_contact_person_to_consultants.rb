class AddSupportContactPersonToConsultants < ActiveRecord::Migration
  def change
    add_column :consultants, :Support_contact_person, :string
  end
end
