
puts 'Cleaning database...'
Experience.destroy_all
User.destroy_all


puts 'Creating awesome users...'



# user1 = {
#     first_name: "Patrick",
#     last_name: "Bruel",
#     age: 45,
#     linkedin: "https://www.linkedin.com/",
#     email: "patrick.bruel@oneup.com",
#     password: '123456',
#     password_confirmation: '123456',
#     #avatar: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQDxUQEhAVFRUXFRcVFxcYGBUVFhUVFxYXGBgXFxUYHSggGBomHhUXITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFxAQFy0dHR4tLSsrLTUtLS8uLS4rKy0tLi0tLS0tKy0tLS0rLS0tLS0tLSstKy0tLSstLS0rLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABAIDBQYHAQj/xABBEAABAwIDBAcGAgkCBwAAAAABAAIRAyEEEjEFQVFhBhMicYGRoQcyscHR8FLhFCMzQmJygsLxc5IVJDRDU2Oi/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAECAwQF/8QAIREBAQACAgMBAQEBAQAAAAAAAAECEQMSITFBBFEiMhP/2gAMAwEAAhEDEQA/AO4IiICIigIiICIiAiIgIiICIiAiIgIiICIiDxF6vEBERAREQEReoCIiAiIqCIiAiIgIiKAiIqCIigIiICIioIiKAiIgIiIC8XqIPEXqIPF6vF6gIiICIioIiICIiAiIoCIioIisvxTAcuYE8Bc+WqgvIoNbadNglxEboM+n0lR6+2A0F0NgENEuiScu/h2tfimxlkWIw22w73mhsOLT2pAy/wAQF9/kVlabwRITYqREQERFQREQERFAREQEREBF4iD1ERUEREBERAREQERaL036YvoMfTw+UECHVHScsgxlaN9jE6wbQCRBkelvS+hhP1IfNUxIaMzmA7zcAHfchaFV9o9FsteHOpgw5gaxog7wSJzb5vdc1pbdcKji9jaoMkueXAkn943uZ4FYLaOND3zFoI5gkEXO/cVNNeI6dtj2gNb1lJ1U1Mgz0Xgh2Z4aS0Fw0uQCd/amSVhz0zpvcWvNV1IkiGnK4At95rpGjtx3DmVzeSVeZVJ4W5aK6Tbozen7qdR80RDg2QH1YL2iMxaNO1Dv6Y3rZOjntadTysrPpZSYtTe0N4OHasOIjmFxhtQgkkzJupOIy9WHRB8ePM2V0Pp3Z/SqljHZaFVpdEuObMBwiLOmDpCzlHFVWGKmV4iZbIcBv7J97wvyK+R6Neqy7KjmmBoSL7tNFuPRrp/tGgQxuKLwBAbU7TT4uuOGqmh9NNcCAQZBuDxC9Wt9DukDcVhg9wDTckDQGbgcLnyIjeBsibQREQERFQREQERFB4iIg9REVBERAREQEREGE6YbRqYfCPNETVfFOnOge+wc47g2ZPcvmfauMBruaK5eYu8ucc7t5DXRHDuC7f7YcW2nh2CoHOY4nsNIGdwBIDryG8SJMTvhfO1dxc41SGtkyAA0C+gDdMojTvWfrXxZxgc1xa7j4nxVl9UEAHQec/ReuL6zy4mTqToFcfh2tsTOpncPv7haTS2abbZSTx3aHgruHDS1wymTZmmu+fvgrLKBJ19RcKqrh6tKxa5oI3iLJs0rFFjBJIdHAwJ9VfbTBpAuNwXOvbsnLFt6hNMwNw9TzU7aNYCIcJgSIsI0nibkxzCCN1pi1u7WIhU4dpzznykb78VJwVJpBeSCRcC4M+SgVTJPZg+KI697IuklOliDTq5ZcW3IAuAe03gbmbzbz7+F8d4Gu81WPaAIG7iBaV9I+y7pRU2hg5qsipThhIBAcIsYI1jhIvu0Uarc0RFWRERAREQERFAREQERFQREQEREBERByv257PLqDK+cgNb1YFvee9pjkC0O8guAYgvAyuGmnDkvo720uYMCXOa0xyEkk9kE65Rc94BXzz1wqTyNu6DKka+JmzcAXUy7e5pPdB0nuWzYDoX1rdSJbJtaY3b02HhgaIEakd4M/Dct+2W2I+ySvJy8tl8Pfw8WNx3XNh0ExFOuRTJsezIFweI3roTOglN+Fp0awGYMDS6Jggbjfgtqw7fD75qfRrRbMPMLn/7W+16TH1HIm+yJxc6aha25bpmLd3irGP8AZfNL9U+HtB1Bh19Suz1Kwi5Cx+ILdQQPorlzZT6k48b7j5oxmxsRh3w5hBB1n6aK0ymZc5+usm9+5dw6QbPp1WwRPMarmXSXo71cuY6RNgQJk6Ltxc/bxXLl/P1m41yjXJtIvv7uAXfPYXhKoo1KrqmZhhjWj92PxcbaL5+6kgiD2uEQZkj5L6N9hmKacC6lEOa+TuLgQIJHLSeS9FeT46UiIqgiIgIiICIigIvEVHqIiAiIgIiICIiDQ/bFsX9I2bUqSZpDO1oMAukAE8QJXzJSdkNgZuF9kbd2f+k4apQJjO0iRuOo9QvlbpNsB+ExbqLxYHsuiMw/wpvzpqY+Ntq6P4c0qDA43ME8huC3bCZYBcYHH5Bai1s0Wub+EfBWdnPfX7Neo+TOWmxuZxAHDdEaleHPHvX0ccus06XhsRS1Lm+d1kWvaQIgjjzXLdnYTA4t5ZRo4rMxpe5zns3EA2za3B7itv2PSNDK0OmmdJkOHCQfiFjLj6mOfZsgfbSVAxmOpNkGo0HhInyXu0K2VkNMvcYaNBJ4xuWg9IdlYWkevxIr1BnDXupFjGh2oEvcIAAN1Mcey5Xr5bFWxlF57LgTdab0oomrRextnRI4gzMeQKu1KOEfTD8JVqUy4EtbWBBdGsE6kciomyalR+Y1LkTfdAXTDDrdxm59pq/XPHuJqNcbGwPeDHmvpz2TbEOGwLahd+1AdERHfzXz7gNkHEYo0qbczi+w53O9fVewsF+j4WjROrKbGnvDRPrK9318+zUT0RFWRERAREQERFAREVBERAREQEREBERAK4x7bdnSM4ZJa8VARrlIGcaXEgHxXZ1qnTfBdYAYsWlk7gSHa+a5ct1O38deHzl1/rlnR8g0mNcBeFsGBwLaL8wGUk66ktm3fC1jZNB9Nga73gSDuu0kW8lumysWXtgtm8dy8fLeuW49/HN46qXg6dNmbq2MbnMvLabWZu87/wA1Z21ibANGhiB6+pWUpgQYAha7iTNQcC4/FY7XL21jjIl46sabqNTmPUfVS8VhRVaey1zHXLYETxjjO/VROkOHjDtvoJ8lL2K4voCSJn4KzcmzKbYTaWzA9raRYAxp7LQAIvbTneVi8bhW0W5W7gbrbNoODQSAtN2niJzH+EwtYW5ZeWcpMcU/2O7JDsVUxEAiYaYvYEm/Ay0f0ldqWk+zXBdVQYCIIp34NLnZo5m5ut2Xt47uWvn8vi6/giIujmIiICIiAiIoCL1EHiIiAiIqCIiAiIgKl7QRBAIOoNwVUig5l062YyhiWPYwMa4B0NAAkGHQB/SfFQtm2cRuJ+S3Tp7gOtwmcC9M5v6TY/I+C0DZ9X9aGk755+a8X6MfL6H5st4tnL9G6DU8+C1Haz8VTqFzGU3hpLhD4c5sm2UiJjmFLxe0TndLgIcQJIAgW1PglBmd7Xmo0DiXie+Ae5Ywmvbtbb6Y3anTmnWw/U0xmrHshhEFs6lw1AHNZfo8+pTpfrHtLjBDWzAAFxJ1P5KjGbOYxjnPrNBOhtcTNgJOg9VjG4tnWAMq5gNYDtDa/Ad/Bayks1Gce3utj2rW7BM6haxsZtGrjqLKzmCmTD8zg1pEEwSbXiPFTcdiv+Tvuc4TykwtA21Va4spuvmILo1AbHFX8+P+mP0Zf5fUWDo02MDabQG7sunfz71eXBtmbbxFBodQquLP4SYtuLeK2XAe0fENs9rX94h3ovf1fN26oi0XC+0ekffpR3O+RCy1DptgnRme5k/iEjzbKmlbIij4XG0qomnUY8fwuB/wpCAiIgIiKDxF6iAiIgIiICIioIix+1ds0cM0mo+/4Rdx8N3igyCxW1dv0MPIc7M/8Lbkd50atC2900rVWEscabZIAbqe929ac/GPeSZhp1JPorMU2yntJ6b4mth3tov6tumVurpI1OptNlrGwekfWZKhdBaQHCyxvSHF/rBTGjY7pIk/GPBa+/BVWB1aiDlaQXAXyg3BI/DY3WeXjljpxZ3GutVKlOq8v7MXsROsXvKpwzMG12StSay5IqN7AcO9sQeS0zopt3rT1bhqIO6fy18uS3fCUqFYdW+9gY1Hh5Lx5Y3Cvfx8kyi7iDsqmJ61rzuBc5/hBPgo7X9ZTLgAwXysFoG4nmdVKpbCwlAmpIN9LW+awXSLadKkx5YYNhYyZkghS7yuo3c9TeSx0g20w4cUwdHxHrPx8lo7S6oTXOk5GcwJn75LyiMTj6pYwW/eO5oOpJ7rQtrx2yGtw4a0QGscW88ok+gcu+OuOyPLZeSW/wAYjZO0DTeJPZMBw5bj3j4LPV6oDiN33cHVaZmgrY8NWFTDtJ95py94Gg8o9V7HhSzXGpkjj+fyV6nVgS1xA8CPESVj8O6NPqDyKVbmW25fRBmaWPDTclp4jTyWV2f0mxFIyzEugcDbxY6R8Fp5ruFvivGV5700Os4D2g1hHWNY8cR2f8FbzsbbNHFsz0nTHvNPvNPMfNfNvXFrpBIWw9HekVXC1m1mHQw4bnDe08Qfos3FdvoFFF2Zj2Yii2tTMtcJ5g7weYUpc2hERB4iIg9REKAqXuDQSTAAkk6Ac1q+3umLKJyUQKjtC4+4D4a+i0rafSKvWkPrE8QLNHIAa96uk22jbnTI9plCANM51PNo3D7sud7RxznSXvJ3955qDVx7jIbfmorWveeA+a6THSbSX40OEHdoIsFbp53HS02VLmsYbSTxPqrjKpgmLi60jTtqT1751zu+Kk7H2k/D1BUbB3FpuHNOrSOCr2tR/Wl34u14nX1lY8CFmzc1Vlsu4y/SPYdm43BtgPGYsFyOIHcZCxdLpZWaIc0yOBjQWmQT/lbl0GqtrUqmHdq0528cpsY7jHmsu3BUQ7JXo06g0DsoJ8ZH5/FeLLPpbjZvT3Y8feTLG6c6PTCue4xPa1v6b1YwdDFY+oGCcpMFxnKJ4nf3LpO0Ng4Rt2UKYtaGjVS9n7PLQHAANFwIgeAhYvNJPEdZwW/9V4zZVHB4VtGkP5nb3u3kqramEyUWPI0c0x/CbOnwJU7FUS/qwJJueOnwUjaGV7MpBNo8Vxl+12141HGtqYU0azqbhBa4i+8bj4iD4rIbEpE0yf4/kFlOm2xXiqyo0Eh4gnWHNA/tP/yVRhaLQwMabD4/e/mvqceXbGV8nlw65WLThlJSoQQANfvzVeJnLO+b81aqtFoO5dHNRY66qgDd5FHOnv8Au6pDiNEFRO4pQqEDxVFR4cJ3q216DqXsu6SdXU/R6juw+Ik+6/QeB08l1xfL+z8QWu8V33oLtv8AS8KMxmpThruJEdl3iLd4K55z6sbGi8RYaEREBc26YdLusc6hSdDALkavg693ALa+mu1P0bBvLT239hvj7x8BPmFw7GYnPfSfUgghaxm0tTq20jGUKG1z3yAeR3AeKppUwXXNj6yLXVzrMhBsf3Y0EWK6MruHotGug8PzV41GN7duQ3QrWKMQBaT5C8/fJYvaNUPcKQni7ieAVFJrZ3ktHZBtzU6kSWmRrbvPy0VltXq2lgaI4qZhjNME8bIMTjcJmaQPebcDiDu9FhHCQtzzDrGiA2YBPG6i7e2Qww4dh51/C48TzUGF6MY84fGU3gwCcjv5XWv6FdTqUs9i2Vx3EYZzNQRz3eBXYdj4s1MPSqiJdTaT3xf1leP9WPmV7fyZ+8XlbBhzSxxPI3kHgVao1nM7DtPkpTi6SSNdZFivHlr9V49PfKqploe2NzD6kWUlzgRosYKZDpFt0q1tvaTcJh31nXgdkfiebNb4n0krWM34Zz1Jtguk+0adWuaYdPVMObeGve10DhIy+q1FjoGpBBUbYmJLqzs7r1JcTxfMn0LlMr4fI8jduX0+PHrNPk8mXbLaplYkgncpDRLpOijmnlupUwLro5otRtzCoIhSKxA74UapyQW3WKC+iuOarAtZBfougrdvZ90g/RcW0uMU39h/IE2Pgb+a0Zz4hXsNWggpZsfU3WN/EPMIvm//AI27/wAj14ufRdvpNerxWcbiW0qT6rvdY0uPcBKw05b7UNsZsQ6kD2aTA3ve65/tHgubVqhBDuGXwusht7HOrVc7j77iXcyZPxKxefNN967SaYZEO7JjcY8NQoTqhOUG8lx+/IL2jU1G+I8RoVGLu2BwB+IVGb62T3ff1WNw75qF+8n0CrdUhpPD4rzA0xAnXLPiT+SCQ+M3I+qntgNEcFDfQAIvqPJVsdLgPBBXtJ8Oacwtu1Up2JNanlcL6jnyWJxzJqi+77Pop2y6kCd8oI9GlkflIkRmgk8YPyWf6L7Wp03nD1ajGamm13ZmbuAdMbxbnZYOqf145j4kcO5a90sJ6xk7wT55Vz5Me003x53G7jt1VoLfDUb+5YjEAMvoG7+R+/Rcd2btvE4b9jXewfhBlv8AsMt8YWcHTms5nV1aTXzYuDiw/wC2DdeTL8+Xx7MP0Y/fDfn4tjGlz3NDfeJJgAeP3dcz6WdIDjKga0EUmE5Z1e6IzkbraDnzUfbO3quIApns02xDATeAPed+95fVYoldeLh6+b7c+fn7+J6XMNWyPa8biD4bx5LbsfSlki/PiLEHyI81ppW07DxAq0A0+9Thp4mmT2T4Xb/tXf1XmpTBN/NT8VgHim15jK7SDJEbnRodDH8Q8IWIGR0DQqVh8S3qzmk6AQdJ3xv0BjktVlDe2WxvH0VprJ0Uuu6wcO5w8lFFjO4qiipqCo1fUHwUms+0KM64IKD393x/wvWvgT5KzTJNuapdUMoHXlFRB4lEH14tS9puONLA5R/3KjWH+UAuPq0DxW2LlPta2rnqigNKQBPN7o17hHquWPtqubbScM0Cw+yodLQ+auudMmVapSy+oXVlXnOZp4ale1GgPmdPmVTAiQd6VXXF90+IQXKziQGjipeFsfAD1KgGuG3Umg4xJPNBJe4zdVU33CtZ5QVB8Cgqe4FwJ3NHxKmUCBYcFAfW7Zta336qXh3c0FQaetB4LWek5zPpniz5x/atop1IzE7rytU6QO7VMf8Ar/vd9FmrGJSUK8RSVVKt6KqVBUpOz8WaNUVGidQ4fiadWnh/hRAVVCo3EllVmZpkHf8AUbt/jPJWsE/URceqweycf1Tsp90m/I/S3hruWbxQIcHt0i/HvSfxKrqCHcjorFwYKu1HhzPX6qzVMgOHcVcf4VaqhWKjiFdruvKtahVEdziTYcyqNNblVuEa/fBRzqgvZ+QRUZkQfX64Z0//AOuxH+p8kRc8PbVaP9V6/wBzyRF0ZU4ff97wmK1++K9RBZdqe5Tn/sx98URBWzQ9ypbr5fNEQVP99TcNp98kRBdf7rv6vgVqG3f2w/02/F69RSrGOTciLKqHrxu5EVgqXo1XqIBW14X9k3+T5NREntPj3C6qxhvcd97nIiv1PiNV909/1VLdERUWqmqiv1XiICIiI//Z",
#   }
  User.create!( {
    first_name: "Patrick",
    last_name: "Bruel",
    age: 45,
    linkedin: "https://www.linkedin.com/",
    email: "patrick.bruel@oneup.com",
    password: '123456',
    password_confirmation: '123456',
    #avatar: "data:image/jpeg;base64,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",
  }
    )

  User.create!({
    first_name: "Laurent",
    last_name: "Ciocchi",
    age: 34,
    linkedin: "https://www.linkedin.com/",
    email: "laurent.ciocchi@oneup.com",
    password: '123456',
    password_confirmation: '123456',
    #avatar: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
})

  User.create!({
    first_name: "Peyo" ,
    last_name: "Daguerre",
    age: 28,
    linkedin: "https://www.linkedin.com/",
    email: "peyo.daguerre@oneup.com",
    password: '123456',
    password_confirmation: '123456',
    #avatar: "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
})

  User.create!({
    first_name: "Virginie" ,
    last_name: "Trinquart",
    age: 28,
    linkedin: "https://www.linkedin.com/",
    email: "virginie.trinquart@oneup.com",
    password: '123456',
    password_confirmation: '123456',
    #avatar: "https://images.unsplash.com/photo-1513732822839-24f03a92f633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  })


users = User.all

puts 'Creating awesome experiences...'


Experience.create!({
  user: users.sample,
  name: "Chanteur",
  description: "Viens, chante, danse et mets tes basquettes ce sera sympa tu verras",
  price: 150,
  address: "Paris",
  category: "Artist",
})


Experience.create!({
  user: users.sample,
  name: "Lawyer",
  description: "Tu rêves d'assister à un procès? Alors viens passer une journée avec moi pour découvrir tout l'envers du décor",
  price: 250,
  address: "Paris",
  category: "Lawyer",
})


Experience.create!({
  user: users.sample,
  name: "Boulanger",
  description: "Procurer du bonheur aux autres est un métier d'avenir. Viens passer une journée et fais toi aussi la meilleurs baguette de Lyon",
  price: 150,
  address: "Lyon",
  category: "Baker",
})


Experience.create!({
  user: users.sample,
  name: "Notaire",
  description: "Etre notaire ce n'est pas que signer un papier pour certifier la vente d'un appartement. Viens passer une journée au coeur de la plus grande etude notariale de Bordeaux",
  price: 220,
  address: "Bordeaux",
  category: "Notaire",
})


Experience.create!({
  user: users.sample,
  name: "Couturier",
  description: "Entre la haute couture et la couture de ta grand mere il y a un monde passionnant. Viens le découvrir",
  price: 230,
  address: "Paris",
  category: "Couturiere",
})


Experience.create!({
  user: users.sample,
  name: "Chef d'entreprise",
  description: "Entre la haute couture et la couture de ta grand mere il y a un monde passionnant. Viens le découvrir",
  price: 400,
  address: "Paris",
  category: "Couturiere",
})


# 50.times do
#   experiences_attributes = {
#       user: users.sample,
#       name: Faker::Job.title,
#       description: Faker::Lorem.paragraph,
#       price: rand(50..300),
#       address: Experience::CITIES_ADDRESS.sample,
#       category: Experience::CATEGORIES.sample,
#   }
# Experience.create!(experiences_attributes)
# end

puts 'Finished!'
