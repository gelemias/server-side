<p align="center">
    <img src="logo.png" alt="logo">
    <br>
    <h3 align="center"> Server side example with Vapor 2, Swift 3.1 and Heroku</h3>
    <br>
</p>

### Installation

#### Xcode (Swift)

Install [Xcode 8](https://developer.apple.com/xcode/) from the Mac App Store. After Xcode 8 has been downloaded, you must open it to finish the installation. This may take a while.

Double check the installation was successful by opening Terminal and running:

```
  $ eval "$(curl -sL check.vapor.sh)"
```

##### Vapor

You will need [homebrew](https://docs.brew.sh/Installation.html). The toolbox includes all of Vapor's dependencies as well as a handy CLI tool for creating new projects.

```
$ brew tap vapor/homebrew-tap
$ brew update
$ brew install vapo
```

##### Heroku

Finally install [Heroku](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)

```
$ brew install heroku/brew/heroku
```

### Examples

https://quiet-sea-57405.herokuapp.com/

These are some examples listed in this project

2. Simple GET https://quiet-sea-57405.herokuapp.com/greet
3. Dynamic GET https://quiet-sea-57405.herokuapp.com/greet?name=Richard
4. POST with parameter (name)
