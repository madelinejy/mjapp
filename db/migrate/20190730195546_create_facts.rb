class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
    	t.string :content
        t.timestamps
    end
  end
end
