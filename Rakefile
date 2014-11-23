require 'html/proofer'

task :test do
	sh "bundle exec jekyll build --trace --destination ./_staging"
	HTML::Proofer.new("./staging", { alt_ignore: ['gravatar'] }).run
end

task :markdown do
	
end