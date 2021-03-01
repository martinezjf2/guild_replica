# The Guild Education Replica

The Guild Education Replica is an application that allows students to do record and save their previous school course experience. A student can sign up and add courses they have taken within the past year, as far as their grade, and a description about the course, or what they learned about the course. A student can also register for available courses. Once registered, if they want to unregister, they can surely do so. The student can also personalize their profile by added a profile picture when editing their profile.

## Opening the Application to Localhost

To use The Guild Education Replica, follow these steps:

1. Make sure you have PostgreSQL installed. If you do not have it installed, [click here](https://www.robinwieruch.de/postgres-sql-macos-setup) for procedure on how to install. Make sure to start up the postgres server before starting your localhost server.

- To start up the postgres server, run this command on your command line: `pg_ctl -D /usr/local/var/postgres start`
- To stop the postgre server, run this command on your command line: `pg_ctl -D /usr/local/var/postgres stop`

2. Open up the project and on the root directory follow the steps below:

3. Make sure you have installed the ruby gems by running: `bundle install` on your terminal.

4. After starting your postgres server, run: `rails db:create` which will create the development files for your database. Then run: `rails db:migrate` which will the migrations to set up the tables. Lastly, run `rails:db seed` in order to generate data to register available courses.

5. To open the project on your localhost, run: `rails s` on your terminal, and go to your browser and type in localhost:3000. You should see the project opened up.

6. Lastly, sign up and enjoy the experience!

## Features

- This appllication does not have a "Home" tab on the navbar. The Guild logo, is used to direct a user to the student's homepage. If you do not have an account, and you are trying to log in, you will get an error. Click on the Guild logo to go to The Guild's homepage.
- Through active storage, a student can attach a profile picture to make it more personal and unique to other students.
- The footer links do not redirect to any path, besides the home route which would be the Guild's homepage.
- On the [original site](https://www.guildeducation.com/) the background image for the jumbotron disappears when shrinking the window to a tablet or mobile frame. This issue was fixed in this application, to make sure that the image is still intact when shrinking your screen size.

## Contributing to The Guild Education Replica

To contribute to The Guild Education Replica, follow these steps:

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## Deploymeent

There is a live demonstration of this project on heroku, [click here](https://guild-education-replica.herokuapp.com/) to view.

## Contact

If you want to contact me you can reach me at <martinezjf2@gmail.com>.

## License

This project uses the following license: [MIT License](LICENSE.txt).
