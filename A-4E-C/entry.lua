-- set FM_dll to name of DLL with EFM, or nil to use SFM
--local FM_dll='ED_FM_Template'

local self_ID="A-4E-C"
declare_plugin(self_ID,
{
installed 	 = true,
dirName	  	 = current_mod_path,
displayName  = _("A-4E-C"),

fileMenuName = _("A-4E-C"),
update_id        = "A-4E-C",
version		 = "1.3.1",	-- increment this number on the release branch. Use semantic versioning https://semver.org
state		 = "installed",
info		 = _("A-4E-C aka \"Community A-4E\"\n\nThe A-4 is a lightweight, subsonic, single-engine attack aircraft. Entering service in 1956, it was designed to deliver conventional and nuclear weapons in daytime visual flight conditions.  However, using the APG-53(A) radar first installed on the A-4C, the A-4 is capable of all-weather navigation at low altitudes, as well as limited computer-assisted weapon delivery."),
encyclopedia_path = current_mod_path..'/Encyclopedia',

binaries   =
{
    'A-4E-C',
},

Skins	=
	{
		{
			name	= _("A-4E-C"),
			dir		= "Skins/1"
		},
	},
Missions =
	{
		{
			name		= _("A-4E-C"),
			dir			= "Missions",
			--CLSID		= "{CLSID5456456346CLSID}",
		},
	},
LogBook =
	{
		{
			name		= _("A-4E-C"),
			type		= "A-4E-C",
		},
	},
InputProfiles =
	{
		["A-4E-C"]     = current_mod_path .. '/Input',
	},
Options =
    {
        {
            name		= _("A-4E-C"),
            nameId		= "A-4E-C",
            dir			= "Options",
            CLSID		= "{A-4E-C options}"
        },
    },		
	
})---------------------------------------------------------------------------------------

-- mounting 3d model paths and texture paths

mount_vfs_texture_path	(current_mod_path.."/Skins/1/ME")	-- for simulator loading window
mount_vfs_model_path    (current_mod_path.."/Shapes")
mount_vfs_model_path    (current_mod_path.."/Cockpit/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_boards")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_environment_aft")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_environment_fore")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_glass_radar")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_instruments")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures/a4e_cockpit_leftovers")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_airframe")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_common")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_fueltanks")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_usmc")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_usn")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_weapons")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_aggr")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_intl")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_trainers")
mount_vfs_texture_path  (current_mod_path.."/Textures/a4e_blueangels")
--mount_vfs_sound_path    (current_mod_path.."/Sounds")

-- Option Cockpit operationnel, HUD partiel
--local FM
--if FM_dll then
    --FM={self_ID,FM_dll}
--else
    --FM=nil
--end

local FM = 

{
	[1] = self_ID,
	[2] = 'A-4E-C',
	center_of_mass		=	{ 0.183 , 0.261 , 0.0},
	
	moment_of_inertia  	= 	{11904, 38641, 35116,-5518},
	--moment_of_inertia  	= 	{11904, 35116, 38641,-5518},
}

make_flyable('A-4E-C'	, current_mod_path..'/Cockpit/Scripts/', FM, current_mod_path..'/comm.lua')

dofile(current_mod_path..'/Weapons/A4E_Weapons.lua')
dofile(current_mod_path..'/A-4E-C.lua')
dofile(current_mod_path..'/UnitPayloads/A-4E-C.lua')

dofile(current_mod_path.."/Views.lua")
make_view_settings('A-4E-C', ViewSettings, SnapViews)

plugin_done()-- finish declaration , clear temporal data
