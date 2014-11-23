module Validator
	# Validator::Error.new
	require "pry"
	class FrontMatter
		class << self
			def new(file)
				yaml_counter = 0
				data = []

				f = File.open(file, "r")

				f.each_with_index do |line, index|
					while yaml_counter < 2
						if line.match(/---/)
							yaml_counter += 1
							break
						else
							data << [line, index]
							break
						end
					end
				end

				return data
			end

		end
	end

	class Spelling
		class << self
		end
	end

	class Error
		class << self
			def new
				@errors = []
			end

			def add(error)
				@errors << error
			end

			def errors

			end
		end
	end
end