# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(
    [{id: 101,
    email: '101@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
    {id: 102,
    email: '102@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
    {id: 103,
    email: '103@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
  {id: 104,
    email: '104@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
    {id: 105,
    email: '105@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
    {id: 106,
    email: '106@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  },
  {id: 107,
    email: '107@example.com',
    password: 'topsecret',
    password_confirmation: 'topsecret',
  }]
)
profile = Profile.create!(
    [{id: 101,
    user_id: 101,
    username: 'john',
    avatar: "1",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 102,
    user_id: 102,
    username: 'joe',
    avatar: "2",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 103,
    user_id: 103,
    username: 'jeff',
    avatar: "3",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 104,
    user_id: 104,
    username: 'jack',
    avatar: "4",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 105,
    user_id: 105,
    username: 'joann',
    avatar: "5",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 106,
    user_id: 106,
    username: 'juan',
    avatar: "6",
    about_me: "Here's my about me section. I'm a seed!!!!",
  },
    {id: 107,
    user_id: 107,
    username: 'alec',
    avatar: "7",
    about_me: "Here's my about me section. I'm a seed!!!!",
  }]
)
