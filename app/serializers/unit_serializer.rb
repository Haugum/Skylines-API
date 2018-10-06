class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :coordinates, :price, :status, :active

end
