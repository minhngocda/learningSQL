# https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
select wands.id, h.age, h.min_coins, h.power 

from (
select p1.age, min(wands.coins_needed) as min_coins, wands.power, wands.code
    from wands
    join wands_property as p1 on wands.code=p1.code
    where p1.is_evil = 0
    group by p1.age, wands.power,wands.code
) as h

join wands on wands.code= h.code and h.min_coins=wands.coins_needed

order by h.power desc, h.age desc;