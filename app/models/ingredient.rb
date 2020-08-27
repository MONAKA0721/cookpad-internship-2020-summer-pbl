class Ingredient < ApplicationRecord
    MAX_NAME_LENGTH = 255
    MAX_QUANTITY_LENGTH = 255
    belongs_to :recipe

    validates :name, presence: true, length: { maximum: MAX_NAME_LENGTH }
    validates :quantity, presence: true, length: { maximum: MAX_QUANTITY_LENGTH }

    def group_1
        ['ごはん', 'パン', 'じゃがいも', 'うどん']
    end

    def group_2
        ['りんご', 'すいか', 'みかん', '柿', 'バナナ']
    end

    def group_3
        ['たこ', '卵', '肉', 'チーズ', '大豆']
    end

    def group_4
        ['牛乳', 'ヨーグルト']
    end

    def group_5
        ['マヨネーズ', 'ベーコン', 'ピーナッツ']
    end

    def group_6
        ['大根', 'ねぎ', 'もやし']
    end


    def nutrition
        [group_1, group_2, group_3, group_4, group_5, group_6].each_with_index do |group, index|
            if group.include?(name)
                return index, 1
            end
        end
        return 6, 1
    end
end
