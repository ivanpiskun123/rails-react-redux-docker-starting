class DocumentSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :status, :deadline, :created_at
  belongs_to :user, serializer: UserShortSerializer
  belongs_to :type
  belongs_to :departament
end
