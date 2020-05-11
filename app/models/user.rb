class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {in: 3..20}
    validates :username, presence: true, uniqueness: true, length: {in: 3..20}
end
