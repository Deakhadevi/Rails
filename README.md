# Rails
Ruby on Rails
 # RubyonRails
RubyonRails Learning
# Install rails:
	gem install rails

# Create sample project:
	rails new demo

# Execute rails app:
	rails s -p 3001
	Note: if no port is specified then it will run at 3000 port which is default.

# Create hello world routes:
	1. Go to config/routes.rb
		root "application#hello"
	2. Go to app/controllers/application_controller.rb
		Add a function called as hello inside the application controller class
			def hello
				render html: 'hello World'
			end

# Create new controller:
	rails generate controller pages

scaffold
example

rails generate scaffold Article title:string description:string
rails generate migration create_articles
rails db:migrate
rails routes --expanded

For Updating the Model:
	1. Create a Migration file
		rails generate migration property_links
	Note: Don't use create_links or anything with create unless you want to create something.
	2. Edit the migration file
		def change
			add_column :properties, :links, :string
    			add_column :properties, :tags, :string
		end
	3. Run the migrate command
		rails db:migrate

