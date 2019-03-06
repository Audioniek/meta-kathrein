FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append += "\
	${@bb.utils.contains("MACHINE", "ufc960|kathrein-ufs910|kathrein-ufs912|kathrein-ufs913|kathrein-ufs922", "file://enigma2-kathrein-all.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ufc960", "file://enigma2-kathrein-ufc960.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ufs910", "file://enigma2-kathrein-ufs910.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ufs912", "file://enigma2-kathrein-ufs912.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ufs913", "file://enigma2-kathrein-ufs913.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ufs922", "file://enigma2-kathrein-ufs922.patch", "", d)} \
	"

