# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

tweet = Tweet.find_or_initialize_by!(name: "ヒツジのいらない枕",)
 tweet.update!(
 image_url:"https://thumbnail.image.rakuten.co.jp/@0_mall/33taiyo/cabinet/shironuki/imgrc0110897767.jpg"
)

official = tweet.links.find_or_initialize_by!(site_name: "公式サイト")
official.update!(
 url: "https://hitsuji-zzz.com/products/ht-001"
)

rakuten = tweet.links.find_or_initialize_by!(site_name: "楽天市場")
rakuten.update!(
 url: "https://hb.afl.rakuten.co.jp/ichiba/579caa9b.32281a4e.579caa9c.20e53ffc/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2F33taiyo%2Fhitsuji%2F&link_type=hybrid_url&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJoeWJyaWRfdXJsIiwic2l6ZSI6IjI0MHgyNDAiLCJuYW0iOjEsIm5hbXAiOiJyaWdodCIsImNvbSI6MSwiY29tcCI6ImRvd24iLCJwcmljZSI6MSwiYm9yIjoxLCJjb2wiOjEsImJidG4iOjEsInByb2QiOjAsImFtcCI6ZmFsc2V9"
)

amazon = tweet.links.find_or_initialize_by!(site_name: "Amazon")
amazon.update!(
 url: "https://www.amazon.co.jp/dp/B08KFTF6GX"
)

tweet.save