rm -rf nrf51dk_ram16.overlay
cat > nrf51dk_ram16.overlay<<EOF
&sram0 {
    reg = <0x20000000 DT_SIZE_K(16)>;
};
&led0 {
    gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
    status = "okay";
};
&button0 {
    gpios = <&gpio0 28 (GPIO_PULL_UP | GPIO_ACTIVE_LOW)>;
    status = "okay";
};
EOF