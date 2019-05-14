class Domains::AccountManagement::Customer < Core::Entity

  attribute :id, :integer
  attribute :name, :string
  attribute :birthdate, :date

  validates :name, presence: true, length: { maximum: 60 }
  validates :birthdate, presence: true

end
