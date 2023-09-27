###top_hit.pl
open(FH,$ARGV[0])||die; 
while($line=<FH>) 
{ 
chomp($line); 
if($line=~/Query=/) 
{ 
@f=split(' ', "$line"); 
$a=$f[1]; 
next; 
} 
if($line=~/Sequences producing significant alignments:/) 
{ 
$n=<FH>; 
$n1=<FH>; 
chomp($n1); 
print "$a\t$n1\n"; 
next; 
} 


}
