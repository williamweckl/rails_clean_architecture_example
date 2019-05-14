class Domains::AccountManagement::Customer < Core::Entity

  attribute :id, :integer
  attribute :name, :string
  attribute :birthdate, :date

  validates :name, presence: true
  validates :birthdate, presence: true

end
