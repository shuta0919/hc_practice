require_relative 'suica'
require_relative 'drink'

class VendingMachine
  # 自販機を作成
  def initialize
    @drink_stock = []
    @drink_stock = 5.times.map { Drink.new('ペプシ', 150) }
    @total_sales = 0
  end

  def menu
    drinks = { 'ペプシ' => '150円', 'モンスター' => '230円', 'いろはす' => '120円' }
  end

  def buy(name, suica)
    drink = @drink_stock.find { |d| d.name == name }
    raise '購入できませんでした' unless drink && suica.pay(drink.price)

    @drink_stock.delete(drink)
    @total_sales += drink.price
    puts "#{drink.name}を購入しました"
  end

  def judge(name)
    if @drink_stock.any? { |drink| drink.name == name }
      puts '購入できます'
    else
      puts '購入できません'
    end
  end

  def add_drink(drink)
    @drink_stock << drink
  end

  def stock
    a = @drink_stock.count { |s| s.name.include?('ペプシ') }
    b = @drink_stock.count { |s| s.name.include?('モンスター') }
    c = @drink_stock.count { |s| s.name.include?('いろはす') }

    puts "ペプシ - #{a}本"
    puts "モンスター - #{b}本"
    puts "いろはす - #{c}本"
  end

  attr_reader :total_sales
end
