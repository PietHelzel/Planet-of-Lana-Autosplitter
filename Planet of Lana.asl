state("Planet of Lana") {
	byte chapterID: "GameAssembly.dll", 0x023DB368, 0xB8, 0x0, 0x18, 0x18, 0x10, 0x20, 0x20, 0x10;
	byte sceneID: "GameAssembly.dll", 0x023DB368, 0xB8, 0x0, 0x18, 0x18, 0x10, 0x20, 0x20, 0x14;
	
	int isLoading: "GameAssembly.dll", 0x024016A0, 0xB8, 0x0, 0x130, 0x10, 0x28, 0x48, 0x20, 0x58;
	int isRunning: "GameAssembly.dll", 0x2532A4C;
}

start {
	return current.chapterID == 1 && current.sceneID == 10 && current.isRunning == 1;
}

split {
	return old.chapterID != current.chapterID;
}

isLoading {
	return current.isLoading != 0 || current.isRunning == 0;
}
