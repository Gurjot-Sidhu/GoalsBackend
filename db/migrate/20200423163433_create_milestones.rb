class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :name
      t.boolean :complete
      t.belongs_to :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
