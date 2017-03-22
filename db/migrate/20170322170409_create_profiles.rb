class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      
      t.integer :marks , :null => false, :default => "40"
      t.string :subject
      t.string :teacher_name , :null => false, :default => ""
      t.string :class_teacher_name
      t.string :mobile
      t.string :address

      t.timestamps
    end
  end
end
