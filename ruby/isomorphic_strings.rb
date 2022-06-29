# @param {String} s
# @param {String} t
# @return {Boolean}
# map each character to the character in the other string and check 
# for any conflicts in the hash
def is_isomorphic(s, t)
    # pseudocode: 
    # create empty hash
    # iterate through s mapping each character to the character of t in the hash
    # check through the hash for any conflicts
    #   if conflict found, return false
    #   else return true
    
    h = {}
    for i in 0..s.length - 1 do
        puts "element #{i} of s is #{s[i]}"
        puts "element #{i} of t is #{t[i]}"
        sCh = s[i]
        tCh = t[i]
        
        if h.key?(sCh)
            if h.fetch(sCh) !=tCh
                return false
            end
        elsif h.has_value?(tCh)
            return false
        else
            h.store(sCh, tCh)
        end
            
    end
    
    return true
    
end