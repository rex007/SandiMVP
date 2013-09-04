class CreateEventis < ActiveRecord::Migration
  def change
    create_table :eventis do |t|
      t.string :naslov
      t.text :opis
      t.string :kraj
      t.datetime :zacetek

      t.timestamps
    end
  end
end
