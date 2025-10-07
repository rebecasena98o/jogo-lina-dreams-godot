extends Node2D

@export var animation_player: AnimationPlayer
@export var autoplay: bool


@onready var botao1 = $Botoes/Opcoes.button
@onready var botao2 = $Botoes/Opcoes.button_2
@onready var botao3 = $Botoes/Opcoes.button_3
var idx_conversa = 0
var opcoes_respostas = [0, 0, 1, 0, 2]

func _ready() -> void:
	$Botoes/Opcoes.visible = false
	
func get_falas(idx: int):
	var opcoes_falas = [
		[
			"Aqui está mais para o guarda-roupa da minha mãe quando ela esquece de limpar!", # Certa
			"Realmente a tristeza profunda parece boa...", # Errada
			"Eu odeio o frio!!" # Errada
		],
		[
			"Poder não é tudo!! Ele não serve de nada se lhe deixar sozinho e vazio!", # Certa
			"Verdade, não é? Amigos não são nada!", # Errada
			"Você pode ser tão grosso!" # Errada
		],
		[
			"Não sei, acho que você está certo! Vamos dominar o mundo!", # Errada
			"E quem precisa de todas essas coisas quando se está feliz de verdade com seus amigos?", # Certa
			"Podemos conquistar tudo com nossos amigos!", # Errada
		],
		[
			"Perdoar", # Certa
			"Não Perdoar", # Errada
			"Ignora-lo", # Errada
		],
		[
			"Tchau Chefão!", # Errada
			"Bye bye orgulhoso! Até nunca mais!", # Errada
			"Você quer ser meu amigo?" # Certa
		]
	]
	return opcoes_falas[idx]



func _input(event: InputEvent) -> void:
	if event.is_action_pressed("next") and not animation_player.is_playing() and not $Botoes/Opcoes.visible:
		animation_player.play()


func pause():
	if autoplay == false:
		animation_player.pause()
		

func show_opcoes():
	pause()
	var falas = get_falas(idx_conversa)
	botao1.text = falas[0]
	botao2.text = falas[1]
	botao3.text = falas[2]
	$Botoes/Opcoes.visible = true



func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()


func _on_opcoes_valor(x: int) -> void:
	if opcoes_respostas[idx_conversa] == x:
		animation_player.play()
		$Botoes/Opcoes.visible = false
		idx_conversa += 1
	else:
		$Falas/Lina/VBoxContainer/TextoLina.text = "Acho que falar isso não é o certo a se fazer."


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Arquivos/Scenes/Level4/level_4.tscn")
