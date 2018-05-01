require 'pry'
class Transfer

  attr_accessor :bank_account, :transfer, :sender, :status, :amount
  attr_reader :receiver

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"

  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    # binding.pry
    sender.balance -= amount
    receiver.balance += amount
    @status = "complete"
  end

end
