class CreateDnd5eFieldsLists < ActiveRecord::Migration[6.1]
  def change
    create_table :dnd_5e_fields_lists do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :height
      t.string :eyes
      t.string :skin
      t.integer :hair
      t.integer :photo_id
      t.jsonb :classes
      t.string :background
      t.string :player_name
      t.string :race
      t.integer :alignment
      t.jsonb :basic_stats
      t.jsonb :saves, array: true, default: []
      t.jsonb :skills, array: true, default: []
      t.integer :passive_perception
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.integer :max_hp
      t.jsonb :hit_dice
      t.string :personality_traits, array: true
      t.string :ideals
      t.string :bonds
      t.string :flaws
      t.jsonb :attack_and_spellcasting
      t.jsonb :money
      t.text :equipment
      t.jsonb :spellslots
      t.jsonb :spells
      t.integer :spellcast_ability
      t.integer :spell_save_dc
      t.integer :spell_attack_bonus
      t.text :backstory
      t.text :allies
      t.integer :vision_length
      t.text :skills_and_languages
      t.jsonb :skills_and_traits
      t.timestamps
    end
  end
end
