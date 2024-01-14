require_relative 'suica'
require_relative 'drink'
require_relative 'vending_machine'

# suicaを発行する(500円)
suica = Suica.new
# 700円チャージする
suica.charge(700)
# 自動販売機を作成
vending_machine = VendingMachine.new
# 購入できるドリンクを表示
vending_machine.menu
# 購入できるか判定
vending_machine.judge('ペプシ')
# ペプシを購入する
vending_machine.buy('ペプシ', suica)
# ドリンクを追加する
5.times do
  vending_machine.add_drink(Drink.new('モンスター', 230))
end
5.times do
  vending_machine.add_drink(Drink.new('いろはす', 120))
end
# モンスターを購入
vending_machine.buy('モンスター', suica)
# いろはすを購入
vending_machine.buy('いろはす', suica)
# ドリンクの在庫
vending_machine.stock
puts vending_machine.total_sales
puts suica.balance
