####match_TF_family.pl

open(FH,"TOPHIT_BLAST_res_PlnTFDB_unknown")||die; 
while($line = <FH>) 
{ 
chomp($line); 
$line=~s/\s+/\t/g; 
@arr=(); 
@arr=split("\t",$line); 


open(FH1,"PlnTFDB_tf_1360294980.txt")||die; 
while($line1 = <FH1>) 
{ 
chomp($line1); 

@arr1=(); 
@arr1=split("\t",$line1); 
$s=$arr1[0]."_".$arr1[1]; 
#print "$arr[1]\n"; 
if($s eq $arr[1]) 
{ 
print "$line\t$line1\n"; 
#last; 
} 
} 

}

