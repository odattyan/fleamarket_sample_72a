women = Category.create(:name=>"レディース")
men = Category.create(:name=>"メンズ")
baby = Category.create(:name=>"ベビー・キッズ")
interior = Category.create(:name=>"インテリア・住まい・小物")
book = Category.create(:name=>"本・音楽・ゲーム")
toy = Category.create(:name=>"おもちゃ・ホビー・グッズ")
cosmetic = Category.create(:name=>"コスメ・香水・美容")
home-appliance = Category.create(:name=>"家電・スマホ・カメラ")
sports = Category.create(:name=>"スポーツ・レジャー")
handmade = Category.create(:name=>"ハンドメイド")
ticket = Category.create(:name=>"チケット")
car = Category.create(:name=>"自動車・オートバイ")
other = Category.create(:name=>"その他")



women_tops = women.children.create(:name=>"トップス")
women_jacket = women.children.create(:name=>"ジャケット/アウター")
women_pants = women.children.create(:name=>"パンツ")
women_one-piece = women.children.create(:name=>"ワンピース")
women_shoes = women.children.create(:name=>"靴")
women_room-wear = women.children.create(:name=>"ルームウェア/パジャマ")
women_leg-wear = women.children.create(:name=>"レッグウェア")
women_hat = women.children.create(:name=>"帽子")
women_bag = women.children.create(:name=>"バッグ")
women_accessory = women.children.create(:name=>"アクセサリー")
women_hair-accessory = women.children.create(:name=>"ヘアアクセサリー")
women_small-articl = women.children.create(:name=>"小物")
women_clock = women.children.create(:name=>"時計")
women_wig = women.children.create(:name=>"ウィッグ/エクステ")
women_yukata = women.children.create(:name=>"浴衣/水着")
women_suit = women.children.create(:name=>"スーツ/フォーマル/ドレス")
women_maternity = women.children.create(:name=>"マタニティ")
women_other = women.children.create(:name=>"その他")
