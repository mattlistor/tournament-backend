class User < ApplicationRecord
    has_many :brackets
    has_secure_password

    validates :name, uniqueness: true
end
