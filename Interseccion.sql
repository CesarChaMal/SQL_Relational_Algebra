-- INTERSECCION
-- R n S = R – (R - S)

-- DIFERENCIA
-- NOT IN
/*
select
      a.c1
from
    (
        select 1 c1
               union all
        select 2
               union all
        select 3
               union all
        select 4    
    ) a
where
     a.c1
         not in
        (
            select 1 as col
                   union all
            select 2
                   union all
            select 3
        )        

-- LEFT JOIN
select
a.cl as 'resultado resta'
from
    (
        select 1 as cl
               union all
        select 2
               union all
        select 3
               union all
        select 4    
    ) as a

left outer join 

    (
        select 1 as cl
               union all
        select 2
               union all
        select 3
    ) as b    
on 
   a.cl = b.cl
where 
      b.cl is null
*/

-- R
select
      *
from
    (
        select 1 c
               union all
        select 2
               union all
        select 3
               union all
        select 4    
    ) a

where
    a.c   
    not in    
-- (R - S)
    (
    select
          a.c
    from
        (
            select 1 c
                   union all
            select 2
                   union all
            select 3
                   union all
            select 4    
        ) a
    where
         a.c
             not in
            (
                select 1 as c
                       union all
                select 2
                       union all
                select 3
            )
    )




