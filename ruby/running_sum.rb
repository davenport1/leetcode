# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    runningSum = Array.new(1,nums[0])
    for i in 1..(nums.length - 1) do
        runningSum[i] = nums[i] + runningSum[i - 1]
    end
    
    return runningSum
        
        
end