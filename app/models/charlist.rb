class Charlist < ApplicationRecord
  belongs_to :system_list, polymorphic: true, dependent: :destroy
end