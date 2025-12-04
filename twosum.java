class Solution {
    public int[] twoSum(int[] nums, int target) {
        HashMap<Integer, Integer> prevMap = new HashMap<>();
        for(int i = 0; i < nums.length; i++){
            int diff = target - nums[i];
            if (prevMap.containsKey(diff)){
                return new int[]{prevMap.get(diff), i};
            }
            prevMap.put(nums[i], i);
        }
         throw new IllegalArgumentException("No two sum solution");
    }
}
// Time complexity: o(n)
// Space complexity: o(n)

// Data structure used: HashMap
// Approach: Single Pass Hash Table
/*  what i did is travesing through the array and for each element i calculated the 
difference between the target and the current element i am tracking after each check i would
store the current element along with the inde in the hashmap so that when i find the difference
in the hashmap i can return the index of the differnece and the current index. 
*/