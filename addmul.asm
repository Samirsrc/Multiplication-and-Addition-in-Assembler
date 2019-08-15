.data 
msga : .asciiz "Donnez A : : "
msgb : .asciiz "Donnez B : "
msgs : .asciiz "La somme de A et B est : "
msgm : .asciiz "La multiplication de A et B est: "
espace : .asciiz "\n"

.text 
#afficher le msga
li $v0,4
la $a0,msga
syscall 
#lire A
li $v0,5
syscall 
#mettre A dans t1
move $t1,$v0
#afficher le msgb
li $v0,4
la $a0,msgb
syscall
#lire B
li $v0,5
syscall 
#mettre B dans t2
move $t2,$v0
 #Mettre la somme dans s1 
add $s1,$t1,$t2
#Mettre la multiplication dans s2
mul $s2,$t1,$t2
#saut de ligne
li $v0,4
la $a0,espace
syscall 
#afficher msgs
li $v0,4
la $a0,msgs
syscall 
#afficher s1
li $v0,1
move $a0,$s1
syscall
#saut de ligne
li $v0,4
la $a0,espace
syscall 
#afficher msgm
li $v0,4
la $a0,msgm
syscall 
#afficher s2
li $v0,1
move $a0,$s2
syscall 