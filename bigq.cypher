// PROFILE
// EXPLAIN
match    (p1:Person          {name: "George III, King of Great Britain and Ireland"})
match    (p1f:Person         {name: "Charlotte, Queen of Great Britain and Ireland and Electress of Hanover"})

match    (p2:Person          {name: "Mead, Richard"})
match    (p2f:Person         {name: "Brydges, Cassandra, 1st Duchess of Chandos"})

match    (p3:Person          {name: "Dashwood, Francis, 11th Baron Le Despencer"})
match    (p3f:Person         {name: "Delany, Mary"})

match    (p4:Person          {name:  "Fitzroy, Augustus Henry, 3rd Duke of Grafton"})
match    (p4a:Person      {name:  "George IV, King of the United Kingdom of Great Britain and Ireland and King of Hanover"})  
match    (p4b:Person      {name:  "Villiers, George Bussy, 4th Earl of Jersey"})  
match    (p4f:Person         {name:  "Banks, Sarah Sophia"})

match    (p5:Person          {name:  "Banks, Sir Joseph"})
match    (p5f:Person         {name:  "Lee, Ann"})

match    (p6:Person          {name:  "Beckford, William Thomas"})
match    (p6f:Person         {name:  "Bentinck, Margaret Cavendish, 2nd Duchess of Portland"})

match    (p7:Person          {name:  "Stuart, John, 3rd Earl of Bute"})
match    (p7f:Person         {name:  "Wortley Montagu, Lady Mary"})
match    (p7fa:Person        {name:  "Stuart, Mary, 3rd Countess of Bute"})  

match    (p8:Person          {name:  "Hamilton, Sir William"})
//********* to do
// FOUNDED Bluestockings
// Bentinck, Margaret Cavendish, 2nd Duchess of Portland MEMBER Bluestockings
// Delany, Mary MEMBER Bluestockings
match    (p8f:Person         {name:  "Montagu, Elizabeth"})

match    (p9:Person          {name:  "Clifford, George"})
match    (p9f:Person         {name:  "Cavendish, Georgiana, 5th Duchess of Devonshire"})

match    (p10:Person         {name:  "Hibbert, George"})
match    (p10f:Person        {name:  "Cavendish-Bentinck, Dorothy, 3rd Duchess of Portland"})

match    (p11:Person         {name:  "Compton, Henry, Bishop of London"})
match    (p11f:Person        {name:  "Monson, Lady Anne"})
match    (p11fd:Person       {name:  "Vane, William Harry, 1st Duke of Cleveland"})  
match    (p11fe:Person       {name:  "Vane, Elizabeth, 1st Duchess of Cleveland"})  
match    (p11fg:Person       {name:  "Coutts, Thomas"}) 
match    (p11fh:Person       {name:  "Masson, Francis"})

match    (p12:Person         {name:  "Solander, Daniel"})
match    (p12f:Person        {name:  "Graham, Catherine"})                                    

match    (p13:Person         {name:  "Hughes, Rev. Griffith"})
match    (p13a:Person        {name:  "Bray, Rev. Thomas"})
match    (p13f:Person        {name:  "Villiers, Frances, 4th Countess of Jersey"})


match    (p14:Person         {name:  "Furber, Robert"})
                                          //********* to do
match    (p14f:Person        {name:  "Worsley, Lady Seymour Dorothy"})

match    (p15:Person         {name:  "Withering, William"})
match    (p15f:Person        {name:  "Hamilton, Lady Emma"})

match    (p16:Person         {name:  "Smellie, William"})
match    (p16f:Person        {name:  "Beauclerk, Lady Diana"})

match    (p17:Person         {name:  "Petiver, James"})
match    (p17f:Person        {name:  "Damer, Anne Seymour"})

match    (p18:Person         {name:  "Dillenius, Johann"})
match    (p18f:Person        {name:  "Beauclerk, Harriot, 9th Duchess of St Albans"})

match    (p19:Person         {name:  "Graham, Dr James"})
//********* to do
// GREW Dahlia pinnata
// Stuart, Charlotte, 1st Marchioness of Bute GREW Dahlia pinnata
// Stuart, Charlotte, 1st Marchioness of Bute SPOUSE Stuart, John, 1st Marquess of Bute  
// Stuart, John, 3rd Earl of Bute PARENT Stuart, John, 1st Marquess of Bute  
match    (p19a:Person        {name:  "Maria I, Queen of Portugal"})
match    (p19f:Person        {name:  "Fox, Elizabeth Vassall, 3rd Baroness Holland"})
                                                            //

match    (p20:Person         {name:  "Sherard, James"})
match    (p20f:Person        {name:  "Jacson, Maria Elizabetha"})

//********* to fix
match    (p21:Person        {name:   "Rousseau, Jean-Jacques"})
match    (p21a:Person       {name:  "Boothby, Sir Brooke"})
match    (p21f:Person        {name:   "Blackwell, Elizabeth"})

match    (p22:Person         {name:   "Darwin, Erasmus"})
match    (p22f:Person        {name:  "Smith-Stanley, Lady Elizabeth, 12th Countess of Derby II"})

match    (p23:Person         {name:  "Ehret, Georg"})
match    (p23f:Person        {name:  "Nihell, Elizabeth"})

match    (p24:Person         {name:   "Hogarth, William"})
match    (p24f:Person        {name:  "Battiscombe, Honor"})

match    (o11f:Object        {name:  "Monson Bengal Insect Collection"})

match    (e11:Residence      {name:  "Fulham Palace"})
match    (e15:Residence      {name:  "Fonthill"})
match    (e31:Residence      {name:  "West Wycombe Park"})

match    (u20:Publication    {name:  "Hortus Elthamensis"})
match    (u23f1:Publication {name:  "The Art of Midwifery"})

match    (u161:Publication   {name:  "The Theory and Practice of Midwifery"})
match    (u21f1:Publication {name:  "A Curious Herbal"})   

match    (pt3a:Person        {name:  "Cozens, Alexander"})
match    (pt3b:Person        {name:  "Chambers, Sir William"})


match    (s1:Society         {name:  "Temple Coffee House Botanic Club"})
match    (s2:Society         {name:  "Society for the Propagation of the Gospel in Foreign Parts"})
match    (s3:Society         {name:  "Lunar Society"})

match    (t1:Theatre         {name:  "Theatre Royal, Drury Lane"})
match    (l1fc:Plant         {name:  "Strelitzia reginae"})


optional match 
   r1a    = (p5)-[:Friend]->(p1)<-[:Spouse]-(p1f)<-[:Friend]-(p3f)<-[:Friend]-(p6f),
   r1e    = (p1)-[:Parent]->(p4a)<-[:Worked_for]-(p4),
   r5a    = (p4f)<-[:Sibling]-(p5)<-[:Worked_for]-(p12)<-[:Friend]-(p11f)-[:Created]->(o11f)-[:Bequeathed_to]->(p5f),
   r22a   = (p22)-[:Patron_of]->(p20f)<-[:Patron_of]-(p21a)-[:Friend]-(p21)<-[:Friend]-(p6f)-[:Friend]->(p7f)-[:Parent]->(p7fa)-[:Spouse]->(p7)<-[:Worked_for]-(p3)-[:Owned]->(e31)
                                                                                                   
   return 
      r1a, r1e,
      r22a,
      r5a
                                                                                                                    
                                                                                                                                 




           
             



