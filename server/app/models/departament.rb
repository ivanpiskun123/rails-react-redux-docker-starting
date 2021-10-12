class Departament < ApplicationRecord

    has_many :documents
    validates :name
end