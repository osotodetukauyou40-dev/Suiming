# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tweet.destroy_all
Tweet.create!(
 name: "ヒツジのいらない枕",
 image_url:"https://thumbnail.image.rakuten.co.jp/@0_mall/33taiyo/cabinet/shironuki/imgrc0110897767.jpg"
)