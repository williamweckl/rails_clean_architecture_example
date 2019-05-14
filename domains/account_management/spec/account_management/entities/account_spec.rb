require "spec_helper"

RSpec.describe Domains::AccountManagement::Account, type: :entity do
  subject(:account) do
    described_class.new(valid_attrs)
  end

  let(:valid_attrs) do
    {
      id: rand(1..999),
      customer_id: rand(1..999),
      created_at: DateTime.current
    }
  end

  it "is valid when attributes are valid" do
    expect(account.valid?).to eq true
  end

  describe "attribute types" do
    it "casts id to integer" do
      account.id = "abcde"
      expect(account.id).to eq("abcde".to_i)

      account.id = "123"
      expect(account.id).to eq(123)
    end

    it "casts customer_id to integer" do
      account.customer_id = "abcde"
      expect(account.customer_id).to eq("abcde".to_i)

      account.customer_id = "123"
      expect(account.customer_id).to eq(123)
    end

    it "casts created_at to datetime" do
      account.created_at = "2019-01-01 12:00"
      expect(account.created_at).to eq(DateTime.parse("2019-01-01 12:00"))
    end
  end

  describe "validations" do
    it { expect(account).to allow_value(nil).for(:id) }
    it { expect(account).to validate_presence_of(:customer_id) }
    it { expect(account).to allow_value(nil).for(:created_at) }
  end
end
