<h2>Fluffy Friend</h2>

<details>
<summary>Table of Contents</summary>

  - About the Project
  - Tech Stack
  - Installation
  - How to contribute
  - License
  - The team
  
</details>


<h3>about-the-project</h3>

Our team of 4 people built "Fluffy Friend" in just 1 week. Initially, we planned to create a project similar to Airbnb, but decided against simply cloning the concept. Instead, we developed the idea of a pet rental platform. This platform allows you to borrow a pet from someone if you're unable to commit to full-time pet ownership🐱🐶

*How it works:*

- Register an account
- Search for pets
- Book the pet you like or 
- Upload a pet you'd like to lend
- Leave a review after your experience

**Features**

Searching for pets and booking:

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/74564476/224835566-a8b5fbd2-ca1f-4bf8-bb77-ea38ffaaa322.gif)

Adding a pet:

![adding a pet](https://user-images.githubusercontent.com/74564476/224836921-09ae08d6-406e-42a4-ba5f-d88bf6cf493c.gif)

Leaving a review:

![ezgif com-video-to-gif (1)](https://user-images.githubusercontent.com/74564476/224839304-4cb68fb1-9e1e-4108-ba36-6595b5da9958.gif)

Searching/filtering through available pets:

![searching](https://user-images.githubusercontent.com/74564476/224838939-d3036115-ecbd-44c9-90cd-7cc1dd8ab938.gif)

<h3>Tech Stack</h3>

Fluffy Friend is optimised for use on all devices.

Frameworks & libraries used:

- [Ruby on Rails](https://rubyonrails.org/)
- [JavaScript](https://www.javascript.com/)
- [Stimulus](https://stimulus.hotwired.dev/)
- [CSS & SASS](https://sass-lang.com/)
- [Bootstrap](https://getbootstrap.com/)

Version control & deployment
- [GitHub](https://github.com/saidam90/fluffy_friend)
- [Heroku](https://fluffy-friend.herokuapp.com/)

<h3>Installation</h3>

To run our app locally, you will need to have already installed [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html). Check them with:
```
$ yarn -v 
$ rails --version
```

If no version number is returned, please install [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable) and/or [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) before continuing.

**Dependencies**

You'll also need to install all dependencies of the project with:
```
$ bundle install && yarn install
```

The `bundle` command installs all Ruby Gems specified in our Gemfile. The ```yarn install``` command retrieves all dependencies from the project’s package.json file.

Run the following command to create a database, load the schema, and initialize it with our seed data. 

```
$ rails db:create db:migrate db:seed
```

**Launch**🚀

Launch the app by running:
```
$ rails s
```
```
$ yarn build --watch
```
Then go to [localhost:3000](http://localhost:3000/)

<h3>How to contribute</h3>

Feel free to fork our repo and create a pull request with any changes you'd like to see us incorporate. We are open to suggestions🙂

- Fork the Project
- Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
- Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
- Push to the Branch (`git push origin feature/AmazingFeature`)
- Open a Pull Request

<h3>License</h3>

Created as part of the Le Wagon Full Stack Web Development bootcamp. Feel free to fork and enhance the platform.

<h3>The team</h3>

Made with love by:

- [Saida Murtazali](https://github.com/saidam90)
- [Tommy Chan](https://github.com/chantommyy)
- [Maxime Sidonio](https://github.com/MximeS)
- [Dylan Dyhan](https://github.com/dillio523)
