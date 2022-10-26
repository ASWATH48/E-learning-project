class CreateAssesments < ActiveRecord::Migration[5.1]
  def change
    create_table :assesments do |t|
      t.string :title
      t.boolean :status
      
      t.timestamps
    end
  end
end
