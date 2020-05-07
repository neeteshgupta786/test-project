class Play < ApplicationRecord
  scope :desc_order, -> { order(created_at: :desc) }
end
