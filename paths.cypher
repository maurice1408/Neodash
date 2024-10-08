match    (p1:Person        	{name: "George III, King of Great Britain and Ireland"})
match    (p1f:Person       	{name: "Charlotte, Queen of Great Britain and Ireland and Electress of Hanover"})
match    (p2:Person        	{name: "Mead, Richard"})
match    (p2f:Person       	{name: "Brydges, Cassandra, 1st Duchess of Chandos"})
match    (p3:Person        	{name: "Dashwood, Francis, 11th Baron Le Despencer"})
match    (p3f:Person       	{name: "Delany, Mary"})
match    (p4:Person        	{name:   "Fitzroy, Augustus Henry, 3rd Duke of Grafton"})
match    (p4f:Person       	{name:  "Banks, Sarah Sophia"})
match    (p5:Person        	{name:  "Banks, Sir Joseph"})
match    (p5f:Person       	{name:  "Lee, Ann"})
match    (p6:Person        	{name:  "Beckford, William Thomas"})
match    (p6f:Person       	{name:  "Bentinck, Margaret Cavendish, 2nd Duchess of Portland"})
match    (p7:Person        	{name:  "Stuart, John, 3rd Earl of Bute"})
match    (p7f:Person       	{name:  "Lee, Ann"})
match    (p8:Person        	{name:  "Hamilton, Sir William"})
match    (p8f:Person       	{name:  "Montagu, Elizabeth"})
match    (p9:Person        	{name:  "Clifford, George"})
match    (p9f:Person       	{name:  "Cavendish, Georgiana, 5th Duchess of Devonshire"})
match    (p10:Person       	{name:  "Clifford, George"})
match    (p10f:Person      	{name:  "Cavendish-Bentinck, Dorothy, 3rd Duchess of Portland"})
match    (p11:Person       	{name:   "Compton, Henry, Bishop of London"})
match    (p11f:Person      	{name:  "Monson, Lady Anne"})
match    (p12:Person       	{name:   "Solander, Daniel"})
match    (p12f:Person      	{name:  "Graham, Catherine"})                                    
match    (p13:Person       	{name:   "Hughes, Rev. Griffith"})
match    (p13f:Person      	{name:  "Villiers, Frances, 4th Countess of Jersey"})
match    (p14:Person       	{name:   "Worsley, Lady Seymour Dorothy"})
match    (p14f:Person      	{name:  "Furber, Robert"})
match    (p15:Person       	{name:   "Withering, William"})
match    (p15f:Person      	{name:  "Hamilton, Lady Emma"})
match    (p16:Person       	{name:   "Smellie, William"})
match    (p16f:Person      	{name:  "Beauclerk, Lady Diana"})
match    (p17:Person       	{name:  "Petiver, James"})
match    (p17f:Person      	{name:  "Damer, Anne Seymour"})
match    (p18:Person       	{name:  "Dillenius, Johann"})
match    (p18f:Person      	{name:  "Beauclerk, Harriot, 9th Duchess of St Albans"})
match    (p19:Person       	{name:   "Graham, Dr James"})
//********* to do
match    (p19f:Person      	{name:  "Fox, Elizabeth Vassall, 3rd Baroness Holland"})
//********* to do
match    (p20:Person       	{name:  "Sherard, James"})
//********* to do
match    (p20f:Person      	{name:  "Jacson, Maria Elizabetha"})
//********* to fix
//p21:Person         	{name:   "Rousseau, Jean-Jacques"})
match    (p21f:Person      	{name:  "Blackwell, Elizabeth"})
//********* to do
match    (p22:Person       	{name:   "Darwin, Erasmus"})
//********* to do
match    (p22f:Person      	{name:  "Smith-Stanley, Lady Elizabeth, 12th Countess of Derby II"})
match    (p23:Person       	{name:   "Ehret, Georg"})
match    (p23f:Person      	{name:  "Nihell, Elizabeth"})
match    (p24:Person       	{name:   "Hogarth, William"})
match    (p24f:Person      	{name:  "Battiscombe, Honor"})
match    (o11f:Object      	{name:  "Monson Bengal Insect Collection"})
match    (e31:Residence    	{name:  "West Wycombe Park"})
match    (u20:Publication  	{name:  "Hortus Elthamensis"})
match    (u23f1:Publication 	{name:  "The Art of Midwifery"})
match    (u161:Publication 	{name:  "The Theory and Practice of Midwifery"})
match    (u21f1:Publication 	{name:  "A Curious Herbal"})
//   (p11fd:Person     	{name:  "Vane, William Harry, 1st Duke of Cleveland"})  
match    (p19a:Person      	{name:  "Maria I, Queen of Portugal"})   
match    (pt3a:Person      	{name:  "Cozens, Alexander"})
match    (pt3b:Person      	{name:  "Chambers, Sir William"})
match    (p13a:Person      	{name:  "Bray, Rev. Thomas"})
match    (s1:Society       	{name:  "Temple Coffee House Botanic Club"})
match    (s2:Society       	{name:  "Society for the Propagation of the Gospel in Foreign Parts"})
match    (s3:Society       	{name:  "Lunar Society"})
match    (t1:Theatre       	{name:  "Theatre Royal, Drury Lane"})

OPTIONAL MATCH

//
// GEORGE III TO BANKS
//
   r1a   = shortestPath((p1)-[*..3]-(p5)),
//
// GEORGE III TO QUEEN CHARLOTTE
//
   r1b   = shortestPath((p1)-[*..3]-(p1f)),
//
// GEORGE III TO BATTISCOMBE
//
   r1c   = shortestPath((p1)-[*..3]-(p24f)),
//
// GEORGE III TO VILLIERS
//
   r1d   = shortestPath((p1)-[*..3]-(p13f)),
//
// GEORGE III TO BECKFORD
//
   r1e   = (pt3a)-[:Taught]-(r3:Person),
   r1f   = (pt3b)-[:Taught]-(r3:Person),
   r1g   = (pt3a)-[:Taught]-(r6:Person),
   r1h   = (pt3b)-[:Taught]-(r6:Person),
//
// QUEEN CHARLOTTE TO DELANY
//
   r1fa  = shortestPath((p1f)-[*..3]-(p3f)),
//
// QUEEN CHARLOTTE TO DIANA BEAUCLERK
//
   r1fb  = shortestPath((p1f)-[*..3]-(p16f)),
//
// DASHWOOD TO DELANY *** WEST WYCOMBE
//
   r3a   = (p3)-[:Owned]-(e31),
   r3fa  = (p3f)-[:Visited]->(e31),
//
// DASHWOOD TO BUTE
//
   r3b   = shortestPath((p3)-[*..3]-(p7)),
//
// DELANY TO DoPORTLAND
//
   r3fb  = shortestPath((p3f)-[*..3]-(p6f)),
//
// DoPORTLAND TO DoPORTLAND
//
   r3fc  = shortestPath((p3f)-[*..3]-(p10f)),
//
// ******************************DoPORTLAND TO ROUSSEAU
//
//r3fd = shortestPath((p3f:Person)-[*..3]-(p21:Person)),
// ******************************
//
// HAMILTON TO HAMILTON
//
   r8a   = shortestPath((p8)-[*..3]-(p15f)),
//
// HAMILTON TO DoDEVONSHIRE
//
   r8b   = shortestPath((p8)-[*..3]-(p9f)),
//
// DoDEVONSHIRE TO DARMER
//
   r9fa  = shortestPath((p9f)-[*..3]-(p17f)),
//
// SOLANDER TO BANKS
// 
   r12a  = shortestPath((p12)-[*..3]-(p5)),
// 
// SOLANDER TO S-S BANKS
//
   r12b  = shortestPath((p12)-[*..3]-(p4f)),
// 
// SOLANDER TO DIANA BEAUCLERK
//
   r12c  = shortestPath((p12)-[*..3]-(p16f)),
//
// BANKS TO S-S BANKS
//
   r5a   = shortestPath((p5)-[*..3]-(p4f)),
//
// MONSON TO SOLANDER
//
   r11fa    = shortestPath((p12)-[*..3]-(p11f)),
//
// MONSON TO LEE INSECT COLLECTION
// 
   r11fb    = (p11f)-[:Created]->(o11f),
   r11fc    = (o11f)-[:Bequeathed_to]->(p5f),
//
// MONSON TO HARRIOT BEAUCLERK (COUTTS) BY LOVER)
//
   // r11fd = (p11f:Person)-[:Kin]->(p11fd:Person),
   // r11fe = (p11ff:Person)-[:Spouse]->(p11fd:Person),
   r11ff    = (p11ff)-[:Lover]->(p11fg),
   r11fg    = (p18f)-[:Spouse]->(p11fg),
//
// HUGHES TO COMPTON BY SPG
//
   r13a     = (p13)-[:Worked_for]->(s2),
   r13b     = (p13a)-[:Founded]->(s2),
   r13c     = (p11)-[:Patron]->(p13a),
//
// DARWIN TO WITHERING LUNAR SOCIETY
//
   r15a     = (p15)-[:Member]->(s3),
   r15b     = (p22)-[:Member]->(s3),
//
// PETIVER TO COMPTON TEMPLE HOUSE COFFEE
//
//r17a = shortestPath((p17:Person)-[*..5]-(p11:Person)),
   r17a     = (p17)-[:Member]->(s1),
   r11a     = (p11)-[:Member]->(s1),
//
// SMITH-STANLEY TO HARRIOT BEAUCLERK (COUTTS) BY THEATRE
//
   r18fa    = (p18f)-[:Worked_at]->(t1),
   r18fb    = (p22f)-[:Worked_at]->(t1),
//
//
// GRAHAM TO GRAHAM (MACAULAY)
//
   r19a     = shortestPath((p19)-[*..3]-(p12f)),
//
// GRAHAM TO DoDEVONSHIRE
//
   r19b     = shortestPath((p19)-[*..3]-(p9f)),
//
// GRAHAM TO HAMILTON
//
   r19c     = shortestPath((p19)-[*..3]-(p15f)),
//
// GRAHAM TO WITHERING
//
   r19d     = (p19)-[:Worked_for]->(p19a),
   r19e     = (p15)-[:Worked_for]->(p19a),
//
// SHERARD TO DILLENIUS HORTUS ELTHAMENSIS
//
   r20a     = (p20)-[:Commissioned]->(u20),
   r20b     = (p18)-[:Wrote]->(u20),
//
// SHERARD TO PETIVER KIN
//
   r20c     = shortestPath((p20)-[*..5]-(p17)),
//
//
// SHERARD TO MEAD CURIOUS HERBAL
//
   r20d     = shortestPath((p20)-[*..3]-(p2)),
//
// MEAD TO DASHWOOD FOUNDLING HOSPITAL
//
   r2a      = shortestPath((p2)-[*..3]-(p3)),
   r2b      = shortestPath((p2)-[*..3]-(p24)),
//
// MEAD TO BLACKWELL
//
   r2c      = shortestPath((p2)-[*..3]-(p21f)),
   r21fa    = (p21f)-[:Wrote]->(u21f1),
//
// BLACKWELL TO BRYDGES
//
   r21fb    = shortestPath((p21f)-[*..3]-(p2f)),
//
// BLACKWELL TO SMELLIE
//
   r21fc    = shortestPath((p21f)-[*..3]-(p16)),
//
// SMITH STANLEY TO DARMER
//
   r22fa    = shortestPath((p22f)-[*..3]-(p17f)),
//
// EHRET TO CLIFFORD
//
   r23a     = shortestPath((p23)-[*..3]-(p9)),
//
// EHRET TO DoPORTLAND
//
   r23b     = shortestPath((p23)-[*..3]-(p6f)),
//
// SMELLIE TO NIHELL ART OF MIDWIFERY RESPONDS TO 
//
   r23fa    = (p23f)-[:Wrote]->(u23f1),
   r16a     = (p16)-[:Wrote]->(u161),
   r23fb    = (u23f1)-[:Responded]->(u161)


return
   r1a, r1b, r1c, r1d, r1e, r1f, r1g, r1h,
   r1fa, r1fb,
   r3a, r3fa,
   r3b, r3fb, r3fc,
   r8a, r8b,
   r9fa,
   r12a, r12b,
   r5a,
   r11fa, r11fb, r11fc, r11ff, r11fg,
   r13a, r13b, r13c,
   r15a, r15b,
   r17a, r11a,
   r18fa, r18fb,
   r19a, r19b, r19c,
   r20a, r20b, r20c, r20d,
   r2a, r2b, r2c, 
   r21fa, r21fb, r21fc, 
   r22fa, 
   r23a, r23b, r23fa, r23fb,
   r16a


