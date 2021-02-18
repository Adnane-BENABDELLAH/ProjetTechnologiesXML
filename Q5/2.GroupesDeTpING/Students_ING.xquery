<groupes>
{
for $x in doc("Students_ING.xml")/Students/student
    return if ($x/ID <= 24)
                then <groupe1>{data($x/FirstName), data($x/LastName) }</groupe1>
           else 
                <groupe2>{data($x/FirstName) , data($x/LastName) }</groupe2>    

}
</groupes>