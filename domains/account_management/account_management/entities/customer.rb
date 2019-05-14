
# TODO: extender de classe genérica
# TODO: include ActiveModel::Validations e outros ir para classe genérica
class Domains::AccountManagement::Customer

  include ActiveModel::Model
  include ActiveModel::Attributes
  # include ActiveModel::Serialization
  include ActiveModel::Validations

  attribute :id, :integer
  attribute :name, :string
  attribute :birthdate, :date

  validates :name, presence: true
  validates :birthdate, presence: true

end
