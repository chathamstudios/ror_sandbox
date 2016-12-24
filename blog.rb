=begin
This is a simple Class with getter & setter methods.

Programmer: Mike Schram		Date: 12/23/2016  
=end
=begin
# CLASSES
class Blog		#SUPER CLASS
	
	def initialize
		@@post_array = new.Array
	end
			
	def set_title= (title)
		@title = title
	end
 
	def get_title
		return @title
	end
 
	def set_author= (author)
		@author = author
	end
 
	def get_author
		return @author
	end
  
	def set_publish_date= (publish_date)		
		time = Time
		@publish_date = time.now
	end
 
	def get_publish_date
		return @publish_date
	end
  
	def set_content= (content)
		@content = content
	end
 
	def get_content
		return @content
	end 
	
	def self.current_count
		puts "There are currently #{@@total_blogs} instances of the BlogPost class."
	end	
	
	def set_array
		@@post_array.push(self.title, self.author, self.publish_date, self.content)
	end 
end

class BlogPost < Blog
	@@total_blog_posts = 0
	
	def initialize
		@@total_blog_posts += 1
	end
	
	def self.current_count
		puts "There are currently #{@@total_blog_posts} instances of the BlogPost class."
	end	
end

# METHODS
def create_post

	# create a blog post 
	blogPost = BlogPost.new
	# set author
	print "Enter the author: " 
	blogPost.set_author = gets
	author = blogPost.get_author
	# set title
	print "Enter the title of the blog: " 
	blogPost.set_title = gets
	title = blogPost.get_title
	# set content
	print "Enter the content of the blog: " 
	blogPost.set_content = gets
	title = blogPost.get_content
	
	# save to array
	blogPost.set_array
end

# MAIN LOGIC
print "Would you like to create a blog post? Y/N: " 
create = gets.downcase

while (create.chop == "y")
	case create.chop
	when 'n'
		puts "OK... good-bye!"
	when 'y'
		create_post
	else
	  puts "You must enter Y or N. Good-bye!"
	end # end of case 
	
	print "Would you like to create a blog post? Y/N: " 
	create = gets.downcase
end # end of loop

BlogPost.current_count
=end

class Blog
 
  @@all_blog_posts = []
  @@num_blog_posts = 0
 
  def self.all
    @@all_blog_posts
  end
 
  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end
 
 
class BlogPost < Blog
 
  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end
 
  def title
    @title
  end
 
  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end
 
  def created_at
    @created_at
  end
 
  def created_at=(created_at)
    @created_at = created_at
  end
 
  def content
    @content
  end
 
  def content=(content)
    @content = content
  end
 
  def save
    BlogPost.add(self)
  end
 
end
 
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish