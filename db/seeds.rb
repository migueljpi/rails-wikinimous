# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# content_structure = Faker::Lorem.paragraph + Faker::Book.title + Faker::Lorem.paragraph + Faker::Lorem.paragraph + Faker::Lorem.paragraph

# html_content = <<-HTML
#   <hr>
#   <p>Ex rerum et. Id laboriosam reprehenderit. Quia sunt et.</p>
#   <h2 id="configurable-object-oriented-policy">Configurable object-oriented policy</h2>
#   <p>Nihil rerum harum. Ipsam et sapiente. Temporibus numquam aut.</p>
#   <p>Possimus placeat qui. Sapiente nulla maxime. Recusandae debitis qui.</p>
#   <p><strong>qui</strong> Cumque harum fugiat.Eveniet dolorem voluptas.Similique sint dignissimos.</p>
#   <h2 id="open-architected-static-productivity">Open-architected static productivity</h2>
#   <p>Dolorum illum natus.Cumque libero mollitia.Quisquam consequatur molestias. <a href="http://halvorson-abshire.co/neal.hyatt">Fantastic Iron Keyboard</a> Consequuntur iusto sit.Explicabo natus distinctio.Excepturi nostrum aliquam.</p>
#   <p>Rem maxime voluptas. Ut aut ex. Optio at tempora.</p>
#   <p>Ratione recusandae molestiae. Voluptatum ad fuga. Sint dolore fugiat.</p>
#   <p>Sed adipisci modi. Id omnis quia. Earum repudiandae magnam.</p>
# HTML

Article.destroy_all

10.times do
  Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
end
