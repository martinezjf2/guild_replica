# The Guild Education Replica

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->

The Guild Education Replica is an application that allows students to do record and save their School Courses details. A student can sign up and add courses they have taken within the year, as far as their grade, and a description.

## Author

Jeffrey Martinez - Initial work

## Opening the Application to Localhost

To use The Guild Education Replica, follow these steps:

1. Make sure you have PostgreSQL installed. If you do not have it installed, [click here](https://www.robinwieruch.de/postgres-sql-macos-setup) for procedure on how to install. Make sure to start up the postgres server before starting your localhost server.

To start up the postgres server, run this command on your command line: `pg_ctl -D /usr/local/var/postgres start`
To stop the postgre server, run this command on your command line: `pg_ctl -D /usr/local/var/postgres stop`

2. Open up the project and on the root directory follow the steps below:

3. Make sure you have installed the ruby gems by running: `bundle install` on your terminal

4. After starting your postgres server, run: `rails db:create` which will create the development files for your database. Then run: `rails db:migrate` which will the migrations to set up the tables. Lastly, run `rails:db seed` in order to generate data to register available courses.

5. To open the project on your localhost, run: `rails s` on your terminal, and go to your browser and type in localhost:3000. You should see the project opened up.

6. Lastly, sign up and enjoy the experience!

## Contributing to The Guild Education Replica

<!--- If your README is long or you have some specific process or steps you want contributors to follow, consider creating a separate CONTRIBUTING.md file--->

To contribute to The Guild Education Replica, follow these steps:

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## Contact

If you want to contact me you can reach me at <martinezjf2@gmail.com>.

## License

<!--- If you're not sure which open license to use see https://choosealicense.com/--->

This project uses the following license: [MIT License](LICENSE.txt).
