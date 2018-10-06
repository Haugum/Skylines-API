class BrokerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :encrypted_password, :profile_picture
  # has_many :units, serializer: UnitSerializer
end
