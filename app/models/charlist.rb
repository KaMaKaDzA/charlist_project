class Charlist < ApplicationRecord
  has_one :system_list, polymorphic: true
end