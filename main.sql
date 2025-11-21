SELECT *
FROM mahsulotlar
WHERE narx BETWEEN 1000000 AND 5000000
  AND chegirma > 10;

SELECT brend,
       COUNT(*) AS mahsulot_soni,
       AVG(narx) AS ortacha_narx
FROM mahsulotlar
GROUP BY brend;

SELECT *
FROM mahsulotlar
WHERE ombordagi_soni < 100
  AND holati = 'active'
ORDER BY narx DESC;

SELECT nomi, narx
FROM mahsulotlar
WHERE kategoriya_id IN (6, 7)
  AND DATE(created_at) BETWEEN '2024-08-01' AND '2024-08-31';

SELECT nomi,
       narx,
       chegirma,
       (narx - chegirma) AS yakuniy_narx
FROM mahsulotlar
ORDER BY narx DESC
LIMIT 5;

SELECT SUM(ombordagi_soni) AS umumiy_soni
FROM mahsulotlar
WHERE rangi = 'Qora'
  AND vazni < 1;
