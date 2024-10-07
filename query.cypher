// 
// This is just an example of a Cypher query stored in Higthub
//
//
// Banks, Sarah Sophia
// Delany, Mary
// Solander, Daniel
// Beauclerk, Lady Diana
// Stuart, John, 3rd Earl of Bute
// Hamilton, Sir William
// Hamilton, Lady Emma
// Cavendish, Georgiana, 5th Duchess of Devonshire
// Monson, Lady Anne
// George Hibbert
// TO
// Banks, Sir Joseph Pair 5
//
OPTIONAL MATCH (p5a:Person), (p5b:Person), (p5c:Person), (p5d:Person), (p5e:Person), (p5f:Person), (p5g:Person), (p5h:Person), (p5i:Person), (p5j:Person), (p5k:Person),
r5b = shortestPath((p5b)-[*..3]-(p5a)),
r5c = shortestPath((p5c)-[*..3]-(p5a)),
r5d = shortestPath((p5d)-[*..3]-(p5a)),
r5e = shortestPath((p5e)-[*..3]-(p5a)),
r5f = shortestPath((p5f)-[*..3]-(p5a)),
r5g = shortestPath((p5g)-[*..3]-(p5a)),
r5h = shortestPath((p5h)-[*..3]-(p5a)),
r5i = shortestPath((p5i)-[*..3]-(p5a)),
r5j = shortestPath((p5j)-[*..3]-(p5a)),
r5k = shortestPath((p5k)-[*..3]-(p5a))
WHERE p5a.name = "Banks, Sir Joseph" and
p5b.name = "Banks, Sarah Sophia" and
p5c.name = "Delany, Mary" and
p5d.name = "Solander, Daniel" and
p5e.name = "Beauclerk, Lady Diana" and
p5f.name = "Stuart, John, 3rd Earl of Bute" and
p5g.name = "Hamilton, Sir William" and
p5h.name = "Hamilton, Lady Emma" and
p5i.name = "Cavendish, Georgiana, 5th Duchess of Devonshire" and
p5j.name = "Monson, Lady Anne" and
p5k.name = "Hibbert, George" 
//
// Stuart, John, 3rd Earl of Bute (1713-1792)
// Solander, Daniel
// Cavendish-Bentinck, Dorothy, 3rd Duchess of Portland
// Rousseau, Jean-Jacques (1712-1778)
// TO 
// Bentinck, Margaret Cavendish, 2nd Duchess of Portland Pair 6 
//
OPTIONAL MATCH (p6fa:Person), (p6fb:Person), (p6fc:Person), (p6fd:Person), (p6fe:Person),
r6fb = shortestPath((p6fb)-[*..3]-(p6fa)),
r6fc = shortestPath((p6fc)-[*..3]-(p6fa)),
r6fd = shortestPath((p6fd)-[*..3]-(p6fa)),
r6fe = shortestPath((p6fe)-[*..3]-(p6fa))
WHERE p6fa.name = "Bentinck, Margaret Cavendish, 2nd Duchess of Portland" and
p6fb.name = "Solander, Daniel" and 
p6fc.name = "Stuart, John, 3rd Earl of Bute" and 
p6fd.name = "Cavendish-Bentinck, Dorothy, 3rd Duchess of Portland" and
p6fe.name = "Rousseau, Jean-Jacques"  
return r5b, r5c, r5d, r5e, r5f, r5g, r5h, r5i, r5j, r5k, r6fb, r6fc, r6fd, r6fe
