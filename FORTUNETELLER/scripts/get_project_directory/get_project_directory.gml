function get_project_directory() {
	switch environment_get_variable("USERNAME") {
		case "Aeon":
			return "C:/Users/Aeon/fire/jam/ultimajam/FORTUNETELLER";
			break;
		case "Admin":
			return "C:/Users/Admin/Documents/ULTIMAJAM/FORTUNETELLER";
			break;
	}
}

#macro project_directory get_project_directory()