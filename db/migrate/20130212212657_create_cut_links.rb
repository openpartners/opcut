class CreateCutLinks < ActiveRecord::Migration
  def change
    create_table :cut_links do |t|
      t.string :link
      t.string :cut

      t.timestamps
    end
  end
end
