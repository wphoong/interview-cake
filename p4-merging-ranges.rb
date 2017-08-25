# Your company built an in-house calendar tool 
# called HiCal. You want to add a feature to see 
# the times in a day when everyone is available.

# To do this, you’ll need to know when any team is 
#   having a meeting. In HiCal, a meeting is stored 
#   as arrays ↴ of integers [start_time, end_time]. 
#   These integers represent the number of 30-minute 
#   blocks past 9:00am.

ranges = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]



def merge_ranges(arr)


end

puts merge_ranges(ranges) # =>  [[0, 1], [3, 8], [9, 12]]