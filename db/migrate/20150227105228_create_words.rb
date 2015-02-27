class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :title
    end
  end
end
