require "csv"

puts "1 → 新規でメモを作成する/ 2 → 既存のメモを編集する"
memo_type = gets.to_s
puts "選択：" + memo_type
memo_type = memo_type.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl+Dをおします"
  input_memo = STDIN.read
  memo = input_memo.chomp
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo}"]
  end
    
elsif memo_type == "2"
  puts "編集したいファイル名を拡張子を除いて入力してください"
  file_name = gets.chomp
  
  puts "編集をしてください"
  puts "完了したらCtrl+Dをおします"
  input_memo = STDIN.read
  memo = input_memo.chomp
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{memo}"]
  end

else
  puts "1か２の数字を入力してください"
  
end
  
  
  