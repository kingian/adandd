# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines for those models you wish to give write DB access
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals

from django.db import models

class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(unique=True, max_length=80)
    class Meta:
        managed = False
        db_table = 'auth_group'

class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')
    class Meta:
        managed = False
        db_table = 'auth_group_permissions'

class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=50)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)
    class Meta:
        managed = False
        db_table = 'auth_permission'

class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField()
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=30)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=75)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()
    class Meta:
        managed = False
        db_table = 'auth_user'

class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)
    class Meta:
        managed = False
        db_table = 'auth_user_groups'

class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)
    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'

class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)
    action_time = models.DateTimeField()
    user = models.ForeignKey(AuthUser)
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True)
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.IntegerField()
    change_message = models.TextField()
    class Meta:
        managed = False
        db_table = 'django_admin_log'

class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)
    class Meta:
        managed = False
        db_table = 'django_content_type'

class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()
    class Meta:
        managed = False
        db_table = 'django_session'

class OsricAttributeTable(models.Model):
    attribute_score = models.IntegerField(primary_key=True)
    str_bonus_to_hit = models.IntegerField(blank=True, null=True)
    str_bonus_to_damage = models.IntegerField(blank=True, null=True)
    str_encumberance_adjustment = models.IntegerField(blank=True, null=True)
    str_minor_tests = models.IntegerField(blank=True, null=True)
    str_major_test = models.IntegerField(blank=True, null=True)
    int_max_additional_languages = models.IntegerField(blank=True, null=True)
    dex_surprise_bonus = models.IntegerField(blank=True, null=True)
    dex_missile_bonus = models.IntegerField(blank=True, null=True)
    dex_ac_adjustment = models.IntegerField(db_column='dex_AC_adjustment', blank=True, null=True) # Field name made lowercase.
    wia_mental_saving_throw_bonus = models.IntegerField(blank=True, null=True)
    con_hp_per_die = models.IntegerField(db_column='con_HP_per_die', blank=True, null=True) # Field name made lowercase.
    con_survive_resurrection_raise_dead = models.IntegerField(blank=True, null=True)
    con_survive_system_shock = models.IntegerField(blank=True, null=True)
    cha_max_henchmen = models.IntegerField(blank=True, null=True)
    cha_loyalty_bonus = models.IntegerField(blank=True, null=True)
    cha_reaction_bonus = models.IntegerField(blank=True, null=True)
    class Meta:
        managed = False
        db_table = 'osric_attribute_table'

class OsricRaceMinsMaxs(models.Model):
	race_id = models.IntegerField(primary_key=True)
	race = models.CharField(max_length=255, blank=True)
	str_min = models.IntegerField(blank=True, null=True)
	dex_min = models.IntegerField(blank=True, null=True)
	con_min = models.IntegerField(blank=True, null=True)
	int_min = models.IntegerField(blank=True, null=True)
	wis_min = models.IntegerField(blank=True, null=True)
	cha_min = models.IntegerField(blank=True, null=True)
	assassin = models.IntegerField(blank=True, null=True)
	cleric = models.IntegerField(blank=True, null=True)
	druid = models.IntegerField(blank=True, null=True)
	fighter = models.IntegerField(blank=True, null=True)
	illusionist = models.IntegerField(blank=True, null=True)
	magic_user = models.IntegerField(blank=True, null=True)
	paladin = models.IntegerField(blank=True, null=True)
	ranger = models.IntegerField(blank=True, null=True)
	thief = models.IntegerField(blank=True, null=True)

	def printline(self):
	  return self.race
	# Builds a dictionary of attribute
	# minimums.
	def buildMinDict(self):
		return {'str':self.str_min,'dex':self.dex_min,'con':self.con_min,'int':self.int_min,'wis':self.wis_min,'cha':self.cha_min}

	# Takes a dictionary of stats and 
	# returns a boolean as to whether
	# the stats qualify.
	def checkRaceQualification(self,atts):
		mins = self.buildMinDict()
		print self.race
		for stat in mins.keys():
			print stat + ":" + str(atts[stat]) + "<" + str(mins[stat]) + ":" + str(int(atts[stat])<int(mins[stat])) + "-" 
			if int(atts[stat]) < int(mins[stat]):
				return False
		print "\n"
		return True
	#def getClassQualifications():
	def __iter__(self):
		for i in self._meta.get_all_field_names():
			yield (i, getattr(self, i))
	
	class Meta:
		managed = False
		db_table = 'osric_race_mins_maxs'
	

class OsricThac0(models.Model):
    thac0_id = models.IntegerField(primary_key=True)
    class_field = models.CharField(db_column='class', max_length=255, blank=True) # Field renamed because it was a Python reserved word.
    level = models.IntegerField(blank=True, null=True)
    twenty_one = models.IntegerField(blank=True, null=True)
    twenty = models.IntegerField(blank=True, null=True)
    zero = models.IntegerField(blank=True, null=True)
    class Meta:
        managed = False
        db_table = 'osric_thac0'

class SandboxAssassin(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_assassin'

class SandboxCharacter(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=200)
    strength = models.IntegerField()
    dexterity = models.IntegerField()
    constitution = models.IntegerField()
    intelligence = models.IntegerField()
    wisdom = models.IntegerField()
    charisma = models.IntegerField()
    experience_points = models.IntegerField()
    hit_points = models.IntegerField()
    race = models.ForeignKey('SandboxPlayerRace')
    character_log = models.TextField()
    class Meta:
        managed = False
        db_table = 'sandbox_character'

class SandboxCleric(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_cleric'

class SandboxDruid(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_druid'

class SandboxDwarf(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_dwarf'

class SandboxElf(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_elf'

class SandboxFighter(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_fighter'

class SandboxGnome(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_gnome'

class SandboxHalfElf(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_half_elf'

class SandboxHalfOrc(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_half_orc'

class SandboxHalfling(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_halfling'

class SandboxHuman(models.Model):
    player_race_ptr = models.ForeignKey('SandboxPlayerRace', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_human'

class SandboxIllusionist(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_illusionist'

class SandboxMagicUser(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_magic_user'

class SandboxMultiClass(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_multi_class'

class SandboxPaladin(models.Model):
    player_class_ptr = models.ForeignKey('SandboxPlayerClass', primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_paladin'

class SandboxPlayerClass(models.Model):
    id = models.IntegerField(primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_player_class'

class SandboxPlayerRace(models.Model):
    id = models.IntegerField(primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_player_race'

class SandboxRanger(models.Model):
    player_class_ptr = models.ForeignKey(SandboxPlayerClass, primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_ranger'

class SandboxThief(models.Model):
    player_class_ptr = models.ForeignKey(SandboxPlayerClass, primary_key=True)
    class Meta:
        managed = False
        db_table = 'sandbox_thief'

