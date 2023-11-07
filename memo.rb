require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

  puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
  memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

  # 1を選択した場合
  if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo_text = $stdin.read
    
    # csvファイルに書き込み
    CSV.open("#{file_name}.csv","w") do |text|
      text << ["#{memo_text}"]
    end
    
  # 2を選択した場合
  elsif memo_type ==2
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo_text = $stdin.read
    
    # csvファイルに追記
    CSV.open("#{file_name}.csv", "a") do |text|
      text << ["#{memo_text}"]
    end
    
  # それ以外の場合
  else
    puts "1か2を入力してください"
  end