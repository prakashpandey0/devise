class AddUsernameToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :username, :string
    add_column :students, :phoneNumber, :integer
  end
end
