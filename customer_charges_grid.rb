# frozen_string_literal: true

class Backofficers::CustomerChargesGrid
  include Datagrid

  scope do
    CustomerCharge.order(created_at: :desc)
  end

  filter(:id, :string)
  filter(:policy_id, :string)
  filter(:billing_deadline, :date)
  filter(:authorization_deadline, :date)
  filter(:value, :enum, select: value.to_a)
  filter(:kind, :enum, select: CustomerChargeKind.to_a)
  filter(:status, :enum, select: CustomerChargeStatus.to_a)

  filter(:contract_status, :enum, select: ContractStatus.to_a) do |value|
    joins(:contract).merge(Contract.where(status: value))
  end

  column(:id, mandatory: true)
  column(:billing_date, mandatory: true)
  column(:billing_deadline, mandatory: true)
  column(:authorization_date, mandatory: true)
  column(:value, mandatory: true)
  column(:kind_humanize, mandatory: true)
  column(:value, mandatory: true)
  column(:status_humanize, mandatory: true)

  column(:created_at, mandatory: true) do
    I18n.l(created_at, format: :short)
  end

  column(:updated_at, mandatory: true) do
    I18n.l(updated_at, format: :short)
  end
end
