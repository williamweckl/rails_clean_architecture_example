class Domains::AccountManagement::Account < Core::Entity

  attribute :id, :integer
  attribute :customer_id, :integer
  attribute :created_at, :datetime

  validates :customer_id, presence: true

end
