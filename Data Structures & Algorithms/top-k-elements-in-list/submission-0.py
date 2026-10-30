class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        counts={}
        for num in nums:
            counts[num] = counts.get(num,0)+1
        sorted_dic = sorted(
            counts,
            key = lambda x: (-counts[x],x)
        )
        return sorted_dic[:k]