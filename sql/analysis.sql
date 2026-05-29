-- 직업별 사용자 수

SELECT Occupation,
       COUNT(*) AS user_count
FROM orders
GROUP BY Occupation
ORDER BY user_count DESC;

-- 성별 사용자 수

SELECT Gender,
       COUNT(*) AS count
FROM orders
GROUP BY Gender;

-- 평균 나이

SELECT AVG(Age) AS average_age
FROM orders;

result.plot(
    x="Occupation",
    y="user_count",
    kind="bar",
    figsize=(8,5)
)

plt.title("Users by Occupation")

plt.savefig("../visualization/occupation_chart.png")

plt.show()
