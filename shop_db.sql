
use Shop_Database
--8-
select *
from Customers c,Orders o
where c.CustomerID=o.CustomerID

--9-

select o.OrderID,c.Name
from Customers c , Orders o

select Orders.OrderID , Customers.Name
from Customers cross join Orders

--10-
select c.Name ,o.OrderID
from Customers c left join Orders o
on c.CustomerID=o.CustomerID

--11-
select c.Name ,o.OrderID
from Customers c right join Orders o
on c.CustomerID=o.CustomerID

--12-
select c.Name ,o.OrderID
from Customers c full outer join Orders o
on c.CustomerID=o.CustomerID

--13-

select Name, count(Name)
from Customers c
group by(c.Name)
having count(c.Name)>1

--14-
select *
from Orders o,Customers c
where o.Amount>500 and c.CustomerID=o.CustomerID

--15-
select Name
from  Customers c left join Orders o
on  c.CustomerID=o.CustomerID
where o.CustomerID is null


--16-

 select c.Name, count(o.OrderID)
from Customers c full join Orders o
on c.CustomerID=o.CustomerID
group by c.Name

--17-
select c.Name, o.Amount
from Customers c left join  Orders o
 on c.CustomerID=o.CustomerID

--18-
update Orders
set Amount *=0.1
from  Customers c,Orders o
where c.Name='John Doe'


--19-
--update Orders

delete 
from  Orders 
where CustomerID not in (select CustomerID from Customers)

select *
from  Orders o left join  Customers c 
on c.CustomerID=o.CustomerID
where c.CustomerID is null

--20-