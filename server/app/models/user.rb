class User < ApplicationRecord

    include Devise::JWT::RevocationStrategies::JTIMatcher

    devise :database_authenticatable, :trackable , :validatable,
           :jwt_authenticatable, jwt_revocation_strategy: self

    has_one_attached :avatar
    belongs_to :position
    has_many :documents


    validates :first_name, :second_name, :email, presence: true
    validates_associated :position
    validates_presence_of :position

    validates :phone_number, length: {minimum: 5, maximum: 20}, allow_blank: true

    before_save :add_jti

    def add_jti
      self.jti = SecureRandom.uuid
    end
    
  end
