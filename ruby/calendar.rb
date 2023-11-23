# frozen_string_literal: true

require 'date'
require 'optparse'

# カレンダーを表示するメソッド
def calendar(year, month)
  first_day = Date.new(year, month, 1)
  last_day = Date.new(year, month, -1)
   
  puts "#{month}月 #{year}年".center(20)
  puts "月 火 水 木 金 土 日"

  print '   ' * ((first_day.wday + 6) % 7)

  (first_day..last_day).each do |date|
    print date.day.to_s.rjust(2)
    print ' '
    print "\n" if date.sunday?
  end

  print "\n"
end

options = {}
opt = OptionParser.new
opt.on("-m month", Integer) { |m| options[:month] = m }
opt.parse!(ARGV)

# now = Date.today
year = Date.today.year
month = options[:month] || Date.today.month

if month < 1 || month > 12
  # 月が1から12の範囲外のエラーメッセージ
  puts "#{month} is neither a month number (1..12) nor a name"
  exit
end

calendar(year, month)
