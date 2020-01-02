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




A = R =  select * from A
B = S =  select * from B

C = A - B


T1 ? ? c(R)
T2 ? ? c ( (S X T1) – R)
T ? T1 – T2

-- T1 ? ? c(R)
select
T1.c
from
    (
        select
              R.c
        from
            (
                select 1 c
                       union all
                select 2
                       union all
                select 3
                       union all
                select 4    
            ) R
     ) T1                  
           
 
-- T2 ? ? c ( (S X T1) – R)
-- (S X T1)
select
*
from
    (
    select 1 as c
           union all
    select 2
           union all
    select 3
    ) S
    ,   
    (
        select
              R.c
        from
            (
                select 1 c
                       union all
                select 2
                       union all
                select 3
                       union all
                select 4    
            ) R
     ) T1                  

-- ( (S X T1) – R)
select
*
from
    (
    select
    *
    from
    -- S
        (
        select 1 as cs
               union all
        select 2
               union all
        select 3
               union all
        select 4    
        ) S
        , 
    -- T1
        (
            select
                  R.cr as ct1
            from        
    -- R
                (
                    select 1 cr
                           union all
                    select 2
                           union all
                    select 3
                ) R
         ) T1                  
    ) as SxT1

where
     
     SxT1.cs
     
     not in
     -- R
     (
        select 1 c
               union all
        select 2
     )    

-- DIVISION
-- T ? T1 – T2
select

*

from
-- T1
    (
        select
              R.c as ct1
        from
            (
                select 1 c
                       union all
                select 2
                       union all
                select 3
                       union all
                select 4    
            ) R
     ) T1                  
where
T1.ct1

not in

-- T2
     (
    select

    SxT1.cs

    from
        (
        select

        *

        from
        -- R
            (
            select 1 as cs
                   union all
            select 2
                   union all
            select 3
                   union all
            select 4    
            ) S
            , 
        -- T1
            (
                select
                      R.cr as ct1
                from        
        -- S
                    (
                        select 1 cr
                               union all
                        select 2
                    ) R
             ) T1                  
        ) as SxT1
    
    where
         
         SxT1.cs
         
         not in
         -- S
         (
            select 1 c
                   union all
            select 2
         ) 
    )   







