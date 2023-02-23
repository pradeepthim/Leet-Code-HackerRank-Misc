select N, 
if( P is null , 'Root', if(N in (select P from BST), 'Inner','Leaf'))
from BST order by N asc;