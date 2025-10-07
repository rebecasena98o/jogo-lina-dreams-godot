extends Area2D

var falavel = false
var indx_fala = 0

signal pode_ir

var falas = [
	"Olá, você é a criança que está
	 no mundo dos sonhos né?
	(Aperte 'E' para proseguir)",
	"Eu me chamo Lawei",
	"Para você estar aqui deve haver
	 algo desagradavel dentro de sí",
	"Você encontrará o chefe de Terra
	 depois daquela porta",
	"Ele deve poder te ajudar... 
	ou você ajudar ele...",
	"Permita-me abrir o caminho
	para você."
]



func _ready() -> void:
	$PanelContainer.visible = false
	$PanelContainer/Label.visible = false
	$PanelContainer.visible = false
	$PanelContainer/Label.visible = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interagir") and falavel:
		if indx_fala < len(falas) - 1:
			indx_fala += 1
		else:
			emit_signal("pode_ir")
			indx_fala = 0
		fala()
		
	
func fala():
	$PanelContainer/Label.text = falas[indx_fala]
	
	


func _on_body_entered(body: Node2D) -> void:
	$PanelContainer.visible = true
	$PanelContainer/Label.visible = true
	falavel = true
	indx_fala = 0
	fala()


func _on_body_exited(body: Node2D) -> void:
	$PanelContainer.visible = false
	$PanelContainer/Label.visible = false
	falavel = false
	indx_fala = 0
