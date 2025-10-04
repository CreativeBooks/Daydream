extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -600.0
const FALL_LIMIT_Y = 718

var can_fall := true
var just_respawned := false
var jump_count = 0
var respawn_position: Vector2

const LIMIT_LEFT = 0
const LIMIT_RIGHT = 4960

func _ready() -> void:
	find_respawn_point()

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jump_count = 0

	if Input.is_action_just_pressed("jump") and jump_count < 2:
		jump_count += 1
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	position.x = clamp(position.x, LIMIT_LEFT, LIMIT_RIGHT)

	if can_fall and position.y > FALL_LIMIT_Y:
		print("🕳 Player fell off the level (Y = ", position.y, ")")
		respawn()
	
	if just_respawned and is_on_floor():
		can_fall = true
		just_respawned = false
	
	if not is_inside_tree():
		print("🚫 Player is not in the scene tree!")
	else:
		print("✅ Player is still in the scene")

	

func find_respawn_point():
	var root = get_tree().current_scene
	var point = root.get_node_or_null("RespawnPoint")
	
	if point:
		respawn_position = point.global_position
		print("✅ RespawnPoint found at: ", respawn_position)
	else:
		respawn_position = global_position
		print("❌ RespawnPoint not found! Defaulting to current position")

func respawn():
	print("⚠️ Respawning player...")
	position = respawn_position  # Use position, not global_position
	velocity = Vector2.ZERO
	can_fall = false
	just_respawned = true
	print("🛬 Player moved to: ", position)
	

	


func _on_l_1_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_2_l_1_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_3_l_1_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_l_2_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_2_l_2_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_3_l_2_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_l_3_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_2_l_3_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()


func _on_3_l_3_body_entered(body: Node2D) -> void:
	if body == self:
		print("🔄 Player entered reset zone — restarting level...")
		get_tree().reload_current_scene()
