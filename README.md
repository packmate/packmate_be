<h1 align="center">
    PackMate Backend 🎣 ⛺🥾 ✔️ 
</h1>

<p align="center">
    <a href="https://circleci.com/gh/packmate/packmate_be/tree/master">
        <img src="https://img.shields.io/circleci/project/github/packmate/packmate_be/main" alt="build status"></a>
    <a href="https://coveralls.io/github/badges/shields">
        <img src="https://img.shields.io/badge/coverage-96%25-greenyellow"
            alt="coverage"></a>
    <a href="https://github.com/packmate/packmate_be/graphs/contributors" alt="Contributors">
        <img src="https://img.shields.io/github/contributors/packmate/packmate_be" /></a>
</p>

Welcome to the backend repository for PackMate, an app designed to help you plan and organize your adventure necessities for every trip. This repository focuses on the backend functionality and utilizes GraphQL, a powerful query language, to efficiently handle data retrieval and manipulation.
  - ### Features
    - Public (non-authenticated) users can access all causes on the platform
    - Continous Integration with CircleCI
    - Continous Deployment with Heroku
    - GraphQL server application
  - ### Links
    - [PackMate](https://packmate-fe.vercel.app/) is fully deployed at https://packmate-fe.vercel.app/
    - [Backend Repo](github.com/packmate/packmate_be) | [Frontend Repo](github.com/packmate/packmate_fe)
  - ### Let's Connect ✉️
    | Young Heon Koh | Margaret Daly |
    | ----------- | ----------- |
    | [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/kohyoungheon/) | [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/marg-aret-daly/) |
    | [![Github][github-shield]](https://github.com/kohyoungheon) | [![Github][github-shield]](https://github.com/margdaly) |


## Built With
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![GraphQL](https://img.shields.io/badge/GraphQL-E10098.svg?style=for-the-badge&logo=GraphQL&logoColor=white)
![Heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![CircleCI](https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white)

## API Endpoint
POST request to `https://packmate-be-d3fb267b5fee.herokuapp.com/graphql`

## Query Examples
**_Items by Category_**

categories: `"Camping"`, `"Hiking"`, `"Fishing"`, `"Climbing"`, `"Kayaking"`, `"Mountain Biking"`, `"Backpacking"`, `"Everything"` 


**Request Body**
```
query{
  items(category:"Camping") {
    id
    name
  }
}
```

**Response Body**
_status code 200_
```
{
    "data": {
        "items": [
            {
                "id": "1",
                "name": "Tent"
            },
            {
                "id": "2",
                "name": "Flashlight"
            },
            {
                "id": "3",
                "name": "Sleeping bag"
            },
          ...
        ]
    }
}      
```
### Mutation Examples
**_Create a List_**

**Successful**
**Request Body**
```
mutation{
  createList(input:{
    name: "My Second List"
    tripType: "Hiking"
    items: ["Hiking Boots", "Sunscreen"]
  }){
    list {
      id
      name
      tripType
      items {
        id
        name
      }
      createdAt
      updatedAt
    }
    errors
  }
}
```

**Response Body**
_status code 200_
```
{
  "data": {
    "createList": {
      "list": {
        "id": "2",
        "name": "My Second List",
        "tripType": "Hiking",
        "items": [
          {
            "id": "4",
            "name": "Hiking Boots"
          },
          {
            "id": "11",
            "name": "Sunscreen"
          }
        ],
        "createdAt": "2023-07-10T20:28:34Z",
        "updatedAt": "2023-07-10T20:28:34Z"
      },
      "errors": []
    }
  }
}
```

**Failure**
**Request Body**
```
mutation{
  createList(input:{
    name: ""
    tripType: "Fishing"
    items: ["Fishing pole", "Bait"]
  }){
    list {
      id
      name
      tripType
      items {
        id
        name
      }
      createdAt
      updatedAt
    }
    errors
  }
}
```

**Response Body**
_status code 400_
```
{
  "data": {
    "createList": null
  },
  "errors": [
    {
      "message": "Name cannot be blank",
      "locations": [
        {
          "line": 2,
          "column": 3
        }
      ],
      "path": [
        "createList"
      ]
    }
  ]
}
```


<!-- CONTRIBUTING -->

## Getting Started
To set up the PackMate backend locally or contribute to its development, follow these steps:

1. Clone or Fork the repository: `git clone https://github.com/your-username/PackMate-Backend.git`

1. Install dependencies: `bundle install`

1. Configure the database: Update the database configuration file (`config/database.yml`) with your local database credentials.

1. Run database migrations: `rails db:{drop,create,migrate,seed}`

1. Execute the RSpec command to run the tests: `bundle exec rspec` 

1. Start the server: `rails server`

You can now make requests to http://localhost:3000/graphql and interact with the PackMate backend locally.


## Contributing
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
<!-- ![BuiltWithLove](http://ForTheBadge.com/images/badges/built-with-love.svg) -->
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url]: https://linkedin.com/in/linkedin_username
[github-shield]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white

<!--
✅ 🚀 🏗️ 🧳 📃 📄 📑 🔖 🏷️ 📝 💌 🧗 🚣 🛶 🚴 🚠
-->

<!-- # README

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
