def two_sum(nums, target)
  i_2 = 1
  length = nums.length
  while i_2 < length do
    nums.each_with_index do |num, i|
      return [i, i_2] if ((nums[i] + nums[i_2]) == target) && (i != i_2)
    end
    i_2 += 1
  end
end

puts two_sum([2,7,11,15], 9)
