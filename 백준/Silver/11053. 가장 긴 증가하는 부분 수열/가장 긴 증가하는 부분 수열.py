N = int(input())
lst = list(map(int, input().split()))

dp = [ 1 for _ in range(N) ]

for i in range(N):
    for j in range(i):
        if lst[i] > lst[j]:
            dp[i] = max(dp[i], dp[j] + 1)
print(max(dp))