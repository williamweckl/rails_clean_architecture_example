require "spec_helper"

RSpec.describe Domains::AccountManagement::Customer, type: :entity do
  subject(:customer) do
    described_class.new(valid_attrs)
  end

  let(:valid_attrs) do
    {
      id: rand(1..999),
      name: "My fake customer",
      birthdate: Date.current
    }
  end

  it "is valid when attributes are valid" do
    expect(customer.valid?).to eq true
  end

  describe "attribute types" do
    it "casts id to integer" do
      customer.id = "abcde"
      expect(customer.id).to eq("abcde".to_i)

      customer.id = "123"
      expect(customer.id).to eq(123)
    end

    it "casts name to string" do
      customer.name = "abcde"
      expect(customer.name).to eq("abcde".to_s)

      customer.name = 123
      expect(customer.name).to eq(123.to_s)
    end

    it "casts birthdate to date" do
      customer.birthdate = "2019-01-01"
      expect(customer.birthdate).to eq(Date.parse("2019-01-01"))
    end
  end

  describe "validations" do
    it { expect(customer).to allow_value(nil).for(:id) }
    it { expect(customer).to validate_presence_of(:name) }
    it { expect(customer).to validate_presence_of(:birthdate) }

    it { expect(customer).to validate_length_of(:name).is_at_most(60) }
  end
end
