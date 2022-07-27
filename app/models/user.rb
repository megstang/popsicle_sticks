class User < ApplicationRecord
    belongs_to :mod, optional: true 
    validates_presence_of :username
    validates_uniqueness_of :username

    has_secure_password
end