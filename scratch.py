from random import randint

def rollDie():
   rolls = []
   while len(rolls) < 4:
      rolls.append(randint(1,6))
   print "Die 1:", rolls[0]
   print "Die 2:", rolls[1]
   print "Die 3:", rolls[2]
   print "Die 4:", rolls[3]
   rolls.remove(min(rolls))
   print "Sum: ", sum(rolls)
   return rolls


def roll(num_of_die, dieType):
   rolls = []
   for i in range(0,num_of_die):
      rolls.append(randint(1,dieType))
   return rolls

def bestThreeOfFourSum():
   toss = roll(4,6)
   toss.remove(min(toss))
   return [toss,sum(toss)]