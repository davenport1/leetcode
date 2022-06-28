# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    if nums.length == 1 
        return 0
    end
    
    totalsum = 0
    nums.each do |i|
        totalsum += i
    end
    
    leftsum = 0
    for i in 0..nums.length - 1 do
        if leftsum == totalsum - leftsum - nums[i] then return i end
        leftsum += nums[i]
        i+= 1
    end
    
    return -1
end