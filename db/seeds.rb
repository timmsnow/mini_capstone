# Product.create!([
#   {name: "rice cooker", price: "385.0", image_url: "https://supersavings.lk/wp-content/uploads/2019/04/Bright-Rice-Cooker-1.jpg", description: "this is ONE SEXY RICE COOOKER. Impress all your friends with this nasty little hot pot!", rating: "1 star", quantity: nil},
#   {name: "broken ceramic bowl", price: "0.0", image_url: "https://miro.medium.com/max/7164/1*imkPFScpV44R1PrlX_07Mg.jpeg", description: "it's broken", rating: "1 star", quantity: nil},
#   {name: "sake set", price: "100.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/51PUsYn2PkL._AC_SL1200_.jpg", description: "get drunk in style", rating: "5 stars", quantity: nil},
#   {name: "lunchbox", price: "5.0", image_url: nil, description: "food not included", rating: "3 stars", quantity: nil},
#   {name: "chopsticks", price: "25.0", image_url: "https://i.pinimg.com/originals/fb/04/a4/fb04a41dcee5441960a28bea299335e4.jpg", description: "never go hungry again with these attractive chopsticks!", rating: "3 stars", quantity: nil},
#   {name: "K-pop button", price: "10.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/91UPFcc3DmL._AC_SX425_.jpg", description: "own your very own representation of a pop star!", rating: "5 stars", quantity: nil}
# ])

Image.create([
  { url: "https://i.pinimg.com/originals/49/3a/5b/493a5bcb883138810b466cad8691d30e.jpg", product_id: 1 },
  { url: "https://cms.whiterabbitexpress.com/wp-content/uploads/2015/09/premium-bandai-sailor-moon-pluto-chopsticks-5.jpg", product_id: 1 },
  { url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDQr0Ev642REDjpzdrrtR6M6_Km1KnVgPf_Q&usqp=CAU", product_id: 1 },
])
