state("Planet of Lana") {
	byte chapterID: "GameAssembly.dll", 0x23BC0B0, 0xB8, 0x0, 0x18, 0x18, 0x10, 0x20, 0x20, 0x10;
	byte sceneID: "GameAssembly.dll", 0x023BC0B0, 0xB8, 0x0, 0x18, 0x18, 0x10, 0x20, 0x20, 0x14;
	
	int isLoading: "GameAssembly.dll", 0x23CED78, 0xB8, 0x0, 0x130, 0x10, 0x28, 0x48, 0x20, 0x58;
	int isPaused: "GameAssembly.dll", 0x252E640;
}

start {
	return current.chapterID == 1 && current.sceneID == 10 && current.isPaused == 1;
}

split {
	return old.chapterID != current.chapterID;
}

isLoading {
	return current.isLoading != 0 || current.isPaused == 0;
}