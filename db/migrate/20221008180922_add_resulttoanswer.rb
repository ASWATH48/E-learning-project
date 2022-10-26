class AddResulttoanswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :result, :boolean

  end
end
