class Dnd5eFieldsList < ApplicationRecord
  belongs_to :charlist, as: :system_list
end