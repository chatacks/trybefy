SELECT 
  name 'Plano',
  COUNT(users.plan_id) 'Quantidade de usuários'
FROM `plans`
  INNER JOIN users
    ON plans.id = users.plan_id
GROUP BY users.plan_id
ORDER BY name;