select DESCRIPTION, PRICE
from ELAFISHE.EXTRAS
where extra_id in (select extra_id
                    from ELAFISHE.EXTRASFORORDERS
                    where ORDER_ID = &ORDER_ID);
