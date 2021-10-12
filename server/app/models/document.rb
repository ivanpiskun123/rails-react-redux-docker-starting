class Document < ApplicationRecord
    belongs_to :user
    belongs_to :type
    belongs_to :departament

    validates_associated :user
    validates_presence_of :user
    validates :name, :status, :deadline

end