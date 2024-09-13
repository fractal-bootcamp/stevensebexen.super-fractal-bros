extends Node

@export var CHARACTER_NAMES: Array[String] = [
	'Lui', 'Parth', 'Sarah', 'Pranav', 'Mehul',
	'Bruno', 'Iyana', 'Norman', 'Steven', 'Jacob',
	'Brian', 'Josh', 'Sam', 'Dorothy'
]

var CHARACTER_PORTRAITS: Dictionary = {}
var CHARACTER_SPLASHES: Dictionary = {}

var LINKS = {
	"sam": {
	  "personal_site": "samcrider.com",
	  "github": "SamuelRCrider",
	  "twitter": "samuelRcrider"
	},
	"sarah": {
	  "personal_site": "hyperdiscogirl.netlify.app",
	  "github": "hyperdiscogirl",
	  "twitter": "hyperdiscogirl"
	},
	"mehul": {
	  "personal_site": "mehulbehera.netlify.app ",
	  "github": "mbehera32",
	  "twitter": "mehulbehera0"
	},
	"dorothy": {
	  "personal_site": "dorothyren.netlify.app",
	  "github": "dxren",
	  "twitter": "dorothyxren"
	},
	"norman": {
	  "personal_site": "normanqian.com",
	  "github": "elizasviel",
	  "twitter": "normanqian"
	},
	"pranav": {
	  "personal_site": "www.breakfastmaxi.com",
	  "github": "pranavpatilsce",
	  "twitter": "pranavsf"
	},
	"iyana": {
	  "personal_site": "iyanamarquez.com",
	  "github": "yayakix",
	  "twitter": "yayacodes2"
	},
	"parth": {
	  "personal_site": "parthagrawal.com",
	  "github": "parth-agrawal",
	  "twitter": "mr_samosaman"
	},
	"lui": {
	  "personal_site": "lui.ie",
	  "github": "yablochko8",
	  "twitter": "yablochko"
	},
	"josh": {
	  "personal_site": "",
	  "github": "Hendersonajardimj",
	  "twitter": "Hend_eaux"
	},
	"brian": {
	  "personal_site": "",
	  "github": "briansmiley",
	  "twitter": "BinarySmile"
	},
	"bruno": {
	  "personal_site": "",
	  "github": "brunoLloret",
	  "twitter": "brunolloret"
	},
	"steven": {
	  "personal_site": "",
	  "github": "ssebexen",
	  "twitter": "ssebexen"
	},
	"jacob": {
		"personal_site": "",
		"github": "",
		"twitter": ""
	}
}

# Called when the node enters the scene tree for the first time.
func _ready():
	for character_name in CHARACTER_NAMES:
		CHARACTER_PORTRAITS[character_name] = load('res://assets/portraits/%s.png' % character_name)
		CHARACTER_SPLASHES[character_name] = load('res://assets/splashes/%s.png' % character_name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
