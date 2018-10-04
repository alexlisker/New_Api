class Type < ApplicationRecord
    has_and_belongs_to_many :centers
    has_many :vouchers
end
