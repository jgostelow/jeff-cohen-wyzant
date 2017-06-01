# Can you make this code work?
#
# If you run it now, you will see that it all test fail immediately.
#
# What must you do to make this file run perfectly
# without changing it?
#
# (Hint: you may create additional files in this folder).

require 'minitest/autorun'

class BankAccountTest < MiniTest::Unit::TestCase

  def test_zero_balance
    my_checking_account = BankAccount.new
    assert_equal 0.00, my_checking_account.balance
  end

  def test_deposits_and_withdrawals
    my_checking_account = BankAccount.new
    my_checking_account.deposit(100.00)
    my_checking_account.deposit(200.00)
    my_checking_account.deposit(300.00)
    my_checking_account.deposit(600.00)
    my_checking_account.withdraw(200.00)

    assert_equal 1000.00, my_checking_account.balance
  end

  def test_transfer
    my_checking_account = BankAccount.new
    my_savings_account = BankAccount.new
    my_savings_account.balance = 1000.00
    my_savings_account.transfer(500.00, my_checking_account)

    assert_equal 1500.00, my_savings_account.balance
  end


  def test_prevent_overdrafts
    my_checking_account = BankAccount.new
    my_checking_account.deposit(2000)
    my_checking_account.withdraw(10000.00)
    assert_equal 2000.00, my_checking_account.balance
  end

  def test_prevent_overdrafts_during_transfer
    my_checking_account = BankAccount.new
    my_savings_account = BankAccount.new
    my_checking_account.deposit(2000)
    my_checking_account.transfer(10000.00, my_savings_account)
    assert_equal 2000.00, my_checking_account.balance
    assert_equal 0.00, my_savings_account.balance
  end
end
