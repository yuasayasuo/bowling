# ボウリングのスコア計算プログラム
class Bowling
    # 初期化
    def initialize
        @total = 0        # 合計スコア
        @score_array = [] # スコアの配列
    end
    
    # スコアを加算する。
    def add_score(pins)
        @score_array.push(pins)
    end
    
    # スコア計算をする。
    def calc_score
        index = 0
        @score_array.each do
            @total += @score_array[index]
            
            # 1投前と2投前の合計が10の場合、スペアボーナスを加算する。
            if (index > 1) && (@score_array[index - 1] + @score_array[index - 2] == 10) && index.even?
                @total += @score_array[index]
            end
            
            index += 1
        end
        @total
    end
    
    # 全フレームの合計スコアを返す。
    def total_score
        @total
    end
end