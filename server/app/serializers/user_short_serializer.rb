class UserShortSerializer
    include JSONAPI::Serializer
    attributes :id, :first_name, :second_name
end