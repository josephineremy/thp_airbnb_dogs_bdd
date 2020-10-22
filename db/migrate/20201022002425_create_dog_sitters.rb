class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.timestamps
      t.belongs_to :city, index: true
    end
  end
end
