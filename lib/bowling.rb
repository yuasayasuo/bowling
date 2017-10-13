# ボウリングのスコア計算プログラム
class Bowling
    # 初期化
    def initialize
        @total = 0
    end
    
    # スコアを加算する。
    def add_score(pins)
        @total += pins
    end
    
    # 全フレームの合計スコアを返す。
    def total_score
        @total
    end
end