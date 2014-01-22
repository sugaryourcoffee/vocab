class CreateWordTranslations < ActiveRecord::Migration
  def change
    create_table :word_translations do |t|
      t.integer :word_id
      t.integer :translation_id

      t.timestamps
    end
  end
end
