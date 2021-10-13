class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :is_chief, :first_name, :second_name, :phone_number,
              :created_at, :last_sign_in_at
  belongs_to :position
  
end
