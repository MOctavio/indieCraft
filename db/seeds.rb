User.create! name: 'jarvis', password: 'secret', password_confirmation: 'secret'

Product.delete_all
Product.create!(title: 'Leather Bracelet',
                description:
    %(<p>
        Sumo omnium placerat ut qui, et vidit maluisset omittantur ut vim.
      </p>),
                image_url:   'article-1-300x208.jpg',
                price: 90.50)
# . . .
Product.create!(title: 'Handmade Silver Ring',
                description:
    %(<p>
        Ex sit tale ludus reprimique, tibique nominavi nam ad, cibo repudiare usu ne.
      </p>),
                image_url: 'article-2-300x208.jpg',
                price: 750.00)
# . . .
Product.create!(title: 'Mens Tide',
                description:
    %(<p>
        Vix te vidisse delicatissimi. Ludus impedit vim at, quod scaevola ne pro.
      </p>),
                image_url: 'article-3-300x208.jpg',
                price: 24.00)

# . . .
Product.create!(title: 'Leather Wallet',
                description:
  %(<p>
      Vix te sumo omnium placerat ut qui, quod scaevola ne pro tibique nominavi.
    </p>),
                image_url: 'article-4-300x208.jpg',
                price: 135.00)
