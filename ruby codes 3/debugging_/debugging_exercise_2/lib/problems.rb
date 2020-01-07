# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
    array=factors(num).select{|i| is_prime?(i)}
    array.sort!.reverse!
    array[0]
end

def factors(n)
    arr=[]
    (1..n).each do |i|
        arr<<i if n%i==0
    end
    arr
end

def is_prime?(n)
    return false if n < 2
    (2...n).each {|i| return false if n%i==0}
    return true
end


def unique_chars?(string)
    hash=Hash.new(0)
    string.split("").each {|char| hash[char]+=1}
    hash.sort_by {|k,v|v}[-1][-1]<2
end


def dupe_indices(array)
    hash=Hash.new(0)
    n_hash={}
    array.each {|char| hash[char]+=1}
    twodim= hash.sort
    twodim=twodim.select {|ele| ele[-1]>1}
    twodim.each do |ele|
        val=[]
        array.each_with_index do |e,i|
            val<<i if ele[0]==e
            n_hash[ele[0]]=val
        end
    end
    n_hash
end


def ana_array(arr1,arr2)
    hash1=Hash.new(0)
    hash2=Hash.new(0)
    arr1.each {|ele| hash1[ele]+=1}
    arr2.each {|ele| hash2[ele]+=1}
    hash1==hash2
end


