#!/usr/bin/python

dir_name = '/home/shivalika/Documents/DATA/'

file = 'Trinity_out.Trinity.fasta'    #Output of Trinity Assembly

a = open(dir_name+file,'r')

count = 1
add='_'+'c0_g1_i1'

newformat= '/home/shivalika/Documents/DATA/rename.fasta'

to_write = open(newformat,'w')

for line in a:
	
	if line.startswith('>TRINITY'):

		to_write.write(('%s%s%s\n')%('>TR_',str(count),str(add)))
		
		print 'NEW CODE:\t','>TR_'+str(count)+str(add),'\tOLD CODE:\t',line.strip()
		
		count = count +1 
	
	else:
		
		to_write.write(('%s')%(line))
to_write.close()

print 'NOW IT COMPLETES'
