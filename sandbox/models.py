from django.db import models

class character(models.Model):
   name = models.CharField(max_length=200)
   # character attributes variables
   strength = models.IntegerField(default=0)
   dexterity = models.IntegerField(default=0)
   constitution = models.IntegerField(default=0)
   intelligence = models.IntegerField(default=0)
   wisdom = models.IntegerField(default=0)
   charisma = models.IntegerField(default=0)
   # Additional record keeping variables
   experience_points models.IntegerField(default=0)
   hit_points = models.IntegerField(default=0)
   race = models.ForeignKey('player_race')
   
   # plumbing variables
   character_log = models.TextField()
   
   


# Character races
class player_race(models.Model):
   
class human(player_race):

class dwarf(player_race):

class elf(player_race):

class gnome(player_race):

class halfling(player_race):

class half_elf(player_race):
   
class half_orc(player_race):

   
# Character classes   
class player_class(models.Model):
   
class assassin(player_class):
   
class cleric(player_class):
   
class druid(player_class):

class fighter(player_class):
   
class illusionist(player_class):
   
class magic_user(player_class):
   
class paladin(player_class):
   
class ranger(player_class):
   
class thief(player_class):

class multi_class(player_class):
#class fighter_thief(player_class):
   
#class fighter_magic_user(player_class):
   
#class magic_user_thief(player_class):
   
#class fighter_magic_user_thief(player_class):
   
#class fighter_illusionist(player_class):
   
#class illusionist_thief(player_class):
# Create your models here.
