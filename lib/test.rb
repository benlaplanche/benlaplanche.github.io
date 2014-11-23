#!/usr/bin/env ruby
require_relative "validator"
require "pry"

file = "/Users/benlaplanche/Sites/blog/_posts/2014-11-23-testing.md"
a = Validator::FrontMatter.new(file)

puts a