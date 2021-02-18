<groupes>
{
for $x in doc("Students_AP.xml")/Students/student
    return if ($x/ID <= 24)
                then <groupe1>{data($x/FirstName), data($x/LastName) }</groupe1>
           else if ($x/ID <= 24*2)
                then <groupe2>{data($x/FirstName) , data($x/LastName) }</groupe2>
           else if ($x/ID <= 24*3)
                then <groupe3>{data($x/FirstName) , data($x/LastName) }</groupe3>
           else if ($x/ID <= 24*4)
                then <groupe4>{data($x/FirstName) , data($x/LastName) }</groupe4>
           else if ($x/ID <= 24*5)
                then <groupe5>{data($x/FirstName) , data($x/LastName) }</groupe5>
           else if ($x/ID <= 24*6)
                then <groupe6>{data($x/FirstName) , data($x/LastName) }</groupe6>
           else if ($x/ID <= 24*7)
                then <groupe7>{data($x/FirstName) , data($x/LastName) }</groupe7>
           else if ($x/ID <= 24*8)
                then <groupe8>{data($x/FirstName) , data($x/LastName) }</groupe8>
           else if ($x/ID <= 24*9)
                then <groupe9>{data($x/FirstName) , data($x/LastName) }</groupe9>
           else 
                <groupe10>{data($x/FirstName) , data($x/LastName) }</groupe10>
                 

}
</groupes>