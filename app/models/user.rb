class User < ApplicationRecord
    has_secure_password
    has_many :goals
    # has_many :milestones, through: :goals
end
