class Center < ApplicationRecord
    has_and_belongs_to_many :types
    has_many :vouchers
end
