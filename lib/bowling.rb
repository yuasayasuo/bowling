# ボウリングのスコア計算プログラム
class Bowling
    # 初期化
    def initialize
        @total = 0        # 合計スコア
        @scores = [] # スコアの配列
    end
    
    # スコアを加算する。
    def add_score(pins)
        @scores.push(pins)
    end
    
    # スコア計算をする。
    def calc_score
        index = 0
        @scores.each do
            @total += @scores[index]
            
            # 1投前と2投前の合計が10の場合、スペアボーナスを加算する。
            # 但し、最終フレームについてはボーナスを加算しない。
            if (index > 1)  && (index < 20) && index.even? &&
               (@scores[index - 1] + @scores[index - 2] == 10)
                @total += @scores[index]
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