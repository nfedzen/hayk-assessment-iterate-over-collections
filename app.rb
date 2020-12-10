require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this


def name_and_size companies_array
    companies_array.each { |company| puts "#{company.name} - #{company.size.to_s}"}
end

def sizes companies_array
    companies_array.reduce(0) { |sum_size, company| sum_size + company.size}
end

def over_100 companies_array
    companies_array.filter { |company| company.size > 100}
end

def find_company companies_array, name
    companies_array.find {|company| company.name == name}
end

def largest_company companies_array
    companies_array.map(&:size).max   
end

def large_to_small companies_array
    companies_array.sort_by {|company| -company.size}
end
binding.pry
0