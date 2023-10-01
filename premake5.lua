project "Glfw"
	kind "StaticLib"
		language "C"
		staticruntime "off"
		warnings "off"

		targetdir "Build/%{cfg.buildcfg}"
		objdir "Build/%{cfg.buildcfg}/obj"

		filter "system:windows"
			systemversion "latest"

			files
			{
				"src/win32_init.c",
				"src/win32_joystick.c",
				"src/win32_module.c",
				"src/win32_monitor.c",
				"src/win32_time.c",
				"src/win32_thread.c",
				"src/win32_window.c",
				"src/wgl_context.c",
				"src/egl_context.c",
				"src/osmesa_context.c"
			}

			defines 
			{ 
				"_GLFW_WIN32",
				"_CRT_SECURE_NO_WARNINGS"
			}

		filter { "configurations:Debug" }
			defines {"__DEBUG"}
			symbols "On"

		filter { "configurations:Release" }
			defines {"__Release"}
			optimize "On"
