function get_project_directory() {
	switch environment_get_variable("USERNAME") {
		case "Aeon":
			return "C:/Users/Aeon/fire/rpgmaker/IN GAMEMAKER!/rpgmaker in gamemaker"
			break;
		case "JC":
			return "C:/Users/JC/Desktop/mvin2.3/rpgmaker in gamemaker";
			break;
		case "Jonah":
			return "i got no clue";
			break;
		default:
			
			break;
	}
}

#macro project_directory get_project_directory()