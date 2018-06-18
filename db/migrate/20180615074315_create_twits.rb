class CreateTwits < ActiveRecord::Migration[5.0]
  def change
    create_table :twits do |t|
      
      t.text "content"
      t.string "ip_address"
      t.string "region"
      t.timestamps
    end
  end
end
