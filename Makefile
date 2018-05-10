build:
	@xargo build --release --target thumbv7em-none-eabihf

hex: build
	arm-none-eabi-objcopy -O ihex -R .eeprom target/thumbv7em-none-eabihf/release/teensy3-wall target/wall.hex
	
clean:
	xargo clean
	git clean -Xf
