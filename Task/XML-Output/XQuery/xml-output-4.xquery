xquery version "3.1";

let $names := ("April","Tam O'Shanter","Emily")
let $remarks := ("Bubbly: I'm > Tam and <= Emily", 'Burns: "When chapman billies leave the street ..."',"Short &amp; shrift")
return <CharacterRemarks>
       {
         for-each-pair($names, $remarks, function($name, $remark) {
                                                                    <Character name='{$name}'> {$remark} </Character>
                                                                  })
       }
       </CharacterRemarks>
