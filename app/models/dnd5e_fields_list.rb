class Dnd5eFieldsList < ApplicationRecord
  has_one :charlist, as: :system_list
end