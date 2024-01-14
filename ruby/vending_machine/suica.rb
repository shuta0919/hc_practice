class Suica
  def initialize
    @balance = 500
  end

  def charge(amount)
    raise 'チャージ金額は100円以上必要です' unless amount >= 100

    @balance += amount
  end

  def pay(amount)
    raise '残高が不足しています' if @balance < amount

    @balance -= amount
  end

  attr_reader :balance
end
