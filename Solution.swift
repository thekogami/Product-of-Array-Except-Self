class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 1, count: n)
        
        // Calculate left products and store them in the result array
        var leftProduct = 1
        for i in 0..<n {
            result[i] *= leftProduct
            leftProduct *= nums[i]
        }
        
        // Calculate right products and multiply them with the left products
        var rightProduct = 1
        for i in (0..<n).reversed() {
            result[i] *= rightProduct
            rightProduct *= nums[i]
        }
        
        return result
    }
}

// Example usage:
let solution = Solution()
print(solution.productExceptSelf([1, 2, 3, 4]))  // Output: [24, 12, 8, 6]
