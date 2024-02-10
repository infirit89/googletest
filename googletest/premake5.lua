project "googletest"
    language "C++"
    cppdialect "C++20"
    kind "StaticLib"
    staticruntime "Off"

    architecture "x86_64"

    targetdir("../Build/%{cfg.buildcfg}")
	objdir("../Intermediates/%{cfg.buildcfg}")

    files  {
        "include/gtest/*.h",
        "src/*.cc"
    }

    includedirs {
        "include",
        "./"
    }

    filter { "configurations:Debug" }
        runtime "Debug"
        symbols "On"

    filter { "configurations:Release" }
        runtime "Release"
        symbols "Off"
        optimize "On"
