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


<h3>About the Project</h3>

Our team of 4 people built "Fluffy Friend" in just 1 week. Initially, we planned to create a project similar to Airbnb, but decided against simply cloning the concept. Instead, we developed the idea of a pet rental platform. This platform allows you to borrow a pet from someone if you're unable to commit to full-time pet ownership🐱🐶

*How it works:*

- Register an account
- Search for pets
- Book the pet you like or 
- Upload a pet you'd like to lend
- Leave a review after your experience

**Features**


<h3>Tech Stack</h3>

Fluffy Friend is optimised for use on all devices.

Frameworks & libraries used:

- Ruby on Rails
- JavaScript
- Stimulus
- CSS & SASS
- Bootstrap

Version control & deployment
- GitHub
- Heroku

<h3>Installation</h3>

To run our app locally, you will need to have already installed Yarn and Rails. Check them with:
```
$ yarn -v 
$ rails --version
```

If no version number is returned, please install Yarn and/or Rails before continuing.

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
Then go to localhost:3000.

<h3>How to contribute</h3>

Feel free to fork our repo and create a pull request with any changes you'd like to see us incorporate. We are open to suggestions🙂

- Fork the Project
- Create your Feature Branch (git checkout -b feature/AmazingFeature)
- Commit your Changes (git commit -m 'Add some AmazingFeature')
- Push to the Branch (git push origin feature/AmazingFeature)
- Open a Pull Request

<h3>License</h3>

Created as part of the Le Wagon Full Stack Web Development bootcamp. Feel free to fork and enhance the platform.

<h3>The team</h3>

Made with love by:

- Saida Murtazali
- Tommy Chan
- Maxime Sidonio
- Dylan Dyhan
