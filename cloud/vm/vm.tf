resource "twc_floating_ip" "ru1-floating-ip" {
	availability_zone = "msk-1"
	ddos_guard = false
}

resource "twc_server" "ru1" {
	name = "ru1"
	project_id = twc_project.ru-project.id
	os_id = data.twc_os.ubuntu-26.id
	availability_zone = "msk-1"
	is_root_password_required = false
	ssh_keys_ids = [data.twc_ssh_keys.mac-key.id]
	floating_ip_id = twc_floating_ip.ru1-floating-ip.id

	configuration {
		configurator_id = 31
		disk = 15360
		cpu = 1
		ram = 1024
		gpu = 0
	}
}
