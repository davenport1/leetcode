# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    #base case nums.length = 1
    if nums.length == 1 
        return 0
    end
    
    leftsum = 0
    rightsum = 0
    
    if nums[0] > nums[nums.length - 1]
        rightsum = nums[nums.length - 1]
        j = nums.length - 2
        i = 0
    else
        leftsum = nums[0]
        i = 1
        j = nums.length - 1
    end
    while i < j
        puts "i index #{i}"
        puts "j index #{j}"
        if leftsum + nums[i] < rightsum + nums[j]
            leftsum = leftsum + nums[i]
            i = i + 1
            puts leftsum
            puts rightsum
            if leftsum == rightsum and i = j - 1
                return j
            end
        else
            rightsum += nums[j]
            j = j - 1
            if leftsum == rightsum and i = j - 1
                return i
            end
        end
    end
    
    return -1
    
end