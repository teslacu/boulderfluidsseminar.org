BoulderFluidsSeminar.org
========================

The Boulder Fluids Seminar website is a two piece codeset with a deploy script to transition between the two. On the dynamic side, a sinatra application (main.rb) handles the templating and serving. This is then cached into a static site, which is served via github pages.

Getting the code
------------------------

To get the code, `cd` into the directory where you'd like the code to be stored and run

`git clone --recursive git@github.com:teslacu/boulderfluidsseminar.org.git BoulderFluidsSeminar`

The entire dynamic code base, along with a git synced submodule for the static site, are now in the `BoulderFluidsSeminar` folder.

Development
------------------------

Before working on any changes, make sure you have the latest version of the code by running `git pull`. This will check with github and supply you with updates to the code base.

To see the site as you develop, you'll want to start sinatra by running `ruby main.rb` from the main site directory. The application depends on both sinatra and redcarpet, which can be installed by running:

`sudo gem install sinatra redcarpet`

(assuming you have ruby and rubygems set up properly... should be installed by default on a mac)

You can now edit files in the `views` and `public` folders.

Deployment
------------------------

Once you've completed the development work, you're ready to deploy. To deploy, first make sure that sinatra is running on port 4567, and then run the `deploy.sh` script with:

`./deploy.sh`

This will automatically create the cached site and commit all changes to github and github-pages.
