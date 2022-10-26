class AddFkToQuest < ActiveRecord::Migration[5.1]
  def change
    add_reference :quests , :assesments, foreign_key: true
    add_reference :quests , :user, foreign_key: true

  end
end
