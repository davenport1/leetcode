# @param {String} s
# @param {String} t
# @return {Boolean}
# pseudocode: 
#   iterate through t
#   as we find charaters from s inside t, remove them from s
#   if we remove all characters from s, then s is a subsequence of t
#       return true
#   else return false

def is_subsequence(s, t)
    # base case empty strings
    if s == "" then return true end

    
    for i in 0..t.length - 1 do
        if s[0] == t[i]
            s.slice!(0)
        end
        
        if s == "" 
            return true
        end

    end
    return false
end