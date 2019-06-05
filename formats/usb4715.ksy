meta:
  id: usb4715
  title: Microchip USB4715 Registers
  endian: be
  imports:
    - usb4715_main
    - usb4715_port
seq:
  - id: registers
    type: register
    repeat: eos
types:
  register:
    seq:
      - id: time
        type: f4
      - id: code
        type: u2
      - id: len
        type: u1
      - id: body
        size: len
        type:
          switch-on: code
          cases:
            0x0000: 'usb4715_main::revision'
            0x3000: 'usb4715_main::vendor_id'
            0x3002: 'usb4715_main::product_id'
            0x3004: 'usb4715_main::device_id'
            0x3006: 'usb4715_main::hub_configuration_1'
            0x3007: 'usb4715_main::hub_configuration_2'
            0x3008: 'usb4715_main::hub_configuration_3'
            0x3006: 'usb4715_main::hub_configuration'
            0x3104: 'usb4715_main::hub_control'
            0x30FA: 'usb4715_main::port_swap'
            0x3197: 'usb4715_main::suspend'
            0x30E5: 'usb4715_port::power_status'
            0x30FB: 'usb4715_port::remap12'
            0x30FC: 'usb4715_port::remap34'
            0x3100: 'usb4715_port::power_state'
            0x3194: 'usb4715_port::connection'
            0x3195: 'usb4715_port::device_speed'
            0x3C00: 'usb4715_port::power_select_1'
            0x3C04: 'usb4715_port::power_select_2'
            0x3C08: 'usb4715_port::power_select_3'
            0x3C0C: 'usb4715_port::power_select_4'
