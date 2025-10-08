.PHONY: flash

DEV=/dev/sdb

flash:
	nix run .#flash
mount:
	sudo mount -o user,uid=1000,gid=1000,rw,noauto $(DEV) /mnt
	sleep 3
	sudo umount /mnt
