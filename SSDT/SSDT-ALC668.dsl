// generated from: ../codec.git/gen_ahhcd.sh ALC668
DefinitionBlock ("", "SSDT", 2, "hack", "ALC668_out", 0)
{
    External(_SB.PCI0.HDEF, DeviceObj)
    Name(_SB.PCI0.HDEF.RMCF, Package()
    {
       "CodecCommander", Package()
        {
            "Custom Commands", Package()
            {
                Package(){}, // signifies Array instead of Dictionary
                // correcting headphones (this is in the Info.plist too)
                Package()
                {
                    // 0x15 SET_UNSOLICITED_ENABLE 0x83
                    "Command", Buffer() { 0x01, 0x57, 0x08, 0x83 },
                    "On Init", ">y",
                    "On Sleep", ">n",
                    "On Wake", ">y",
                },
                Package()
                {
                    // Node 0x1b - Pin Control (In Enable)
                    "Command", Buffer() { 0x01, 0xb7, 0x07, 0x20 },
                    "On Init", ">n",
                    "On Sleep", ">n",
                    "On Wake", ">y",
                },
                // correcting audio after Windows (not in current Info.plist)
                Package()
                {
                    // 0x20 SET_COEF_INDEX 0x07
                    "Command", Buffer() { 0x02, 0x05, 0x00, 0x07 },
                    "On Init", ">y",
                    "On Sleep", ">n",
                    "On Wake", ">n",
                },
                Package()
                {
                    // 0x20 SET_PROC_COEF 0x0F80
                    "Command", Buffer() { 0x02, 0x04, 0x0f, 0x80 },
                    "On Init", ">y",
                    "On Sleep", ">n",
                    "On Wake", ">n",
                },
            },
        },
        "CodecCommanderPowerHook", Package()
        {
            "Disable", ">n",
        },
        "CodecCommanderProbeInit", Package()
        {
            "Version", 0x020600,
            "10ec_0668", Package()
            {
                "PinConfigDefault", Package()
                {
                    Package(){},
                    Package()
                    {
                        "LayoutID", 3,
                        "PinConfigs", Package()
                        {
                            Package(){},
                            0x12, 0x90a60130,
                            0x14, 0x90170110,
                            0x15, 0x04211020,
                            0x16, 0x40000000,
                            0x18, 0x411111f0,
                            0x19, 0x411111f0,
                            0x1a, 0x411111f0,
                            0x1b, 0x411111f0,
                            0x1d, 0x40c7836d,
                            0x1e, 0x411111f0,
                            0x1f, 0x411111f0,
                        },
                    },
                },
                "Custom Commands", Package()
                {
                    Package(){},
                    Package()
                    {
                        "LayoutID", 3,
                        "Command", Buffer()
                        {
                            0x01, 0x47, 0x0c, 0x02,
                            0x01, 0x57, 0x0c, 0x02,
                            0x02, 0x05, 0x00, 0x01,
                            0x02, 0x04, 0xbe, 0xbe,
                            0x02, 0x05, 0x00, 0x02,
                            0x02, 0x04, 0xaa, 0xaa,
                            0x02, 0x05, 0x00, 0x03,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x04,
                            0x02, 0x04, 0x01, 0x80,
                            0x02, 0x05, 0x00, 0x06,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x07,
                            0x02, 0x04, 0x0f, 0x80,
                            0x02, 0x05, 0x00, 0x08,
                            0x02, 0x04, 0x00, 0x31,
                            0x02, 0x05, 0x00, 0x0a,
                            0x02, 0x04, 0x00, 0x60,
                            0x02, 0x05, 0x00, 0x0b,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x0c,
                            0x02, 0x04, 0x7c, 0xf7,
                            0x02, 0x05, 0x00, 0x0d,
                            0x02, 0x04, 0x10, 0x80,
                            0x02, 0x05, 0x00, 0x0e,
                            0x02, 0x04, 0x7f, 0x7f,
                            0x02, 0x05, 0x00, 0x0f,
                            0x02, 0x04, 0xcc, 0xcc,
                            0x02, 0x05, 0x00, 0x10,
                            0x02, 0x04, 0xdd, 0xcc,
                            0x02, 0x05, 0x00, 0x11,
                            0x02, 0x04, 0x00, 0x01,
                            0x02, 0x05, 0x00, 0x13,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x14,
                            0x02, 0x04, 0x2a, 0xa0,
                            0x02, 0x05, 0x00, 0x17,
                            0x02, 0x04, 0xa9, 0x40,
                            0x02, 0x05, 0x00, 0x19,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x1a,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x1b,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x1c,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x1d,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x1e,
                            0x02, 0x04, 0x74, 0x18,
                            0x02, 0x05, 0x00, 0x1f,
                            0x02, 0x04, 0x08, 0x04,
                            0x02, 0x05, 0x00, 0x20,
                            0x02, 0x04, 0x42, 0x00,
                            0x02, 0x05, 0x00, 0x21,
                            0x02, 0x04, 0x04, 0x68,
                            0x02, 0x05, 0x00, 0x22,
                            0x02, 0x04, 0x8c, 0xcc,
                            0x02, 0x05, 0x00, 0x23,
                            0x02, 0x04, 0x02, 0x50,
                            0x02, 0x05, 0x00, 0x24,
                            0x02, 0x04, 0x74, 0x18,
                            0x02, 0x05, 0x00, 0x27,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0x28,
                            0x02, 0x04, 0x8c, 0xcc,
                            0x02, 0x05, 0x00, 0x2a,
                            0x02, 0x04, 0xff, 0x00,
                            0x02, 0x05, 0x00, 0x2b,
                            0x02, 0x04, 0x80, 0x00,
                            0x02, 0x05, 0x00, 0xa7,
                            0x02, 0x04, 0xff, 0x00,
                            0x02, 0x05, 0x00, 0xa8,
                            0x02, 0x04, 0x80, 0x00,
                            0x02, 0x05, 0x00, 0xaa,
                            0x02, 0x04, 0x2e, 0x17,
                            0x02, 0x05, 0x00, 0xab,
                            0x02, 0x04, 0xa0, 0xc0,
                            0x02, 0x05, 0x00, 0xac,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xad,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xae,
                            0x02, 0x04, 0x2a, 0xc6,
                            0x02, 0x05, 0x00, 0xaf,
                            0x02, 0x04, 0xa4, 0x80,
                            0x02, 0x05, 0x00, 0xb0,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xb1,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xb2,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xb3,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xb4,
                            0x02, 0x04, 0x00, 0x00,
                            0x02, 0x05, 0x00, 0xb5,
                            0x02, 0x04, 0x10, 0x40,
                            0x02, 0x05, 0x00, 0xb6,
                            0x02, 0x04, 0xd6, 0x97,
                            0x02, 0x05, 0x00, 0xb7,
                            0x02, 0x04, 0x90, 0x2b,
                            0x02, 0x05, 0x00, 0xb8,
                            0x02, 0x04, 0xd6, 0x97,
                            0x02, 0x05, 0x00, 0xb9,
                            0x02, 0x04, 0x90, 0x2b,
                            0x02, 0x05, 0x00, 0xba,
                            0x02, 0x04, 0xb8, 0xba,
                            0x02, 0x05, 0x00, 0xbb,
                            0x02, 0x04, 0xaa, 0xab,
                            0x02, 0x05, 0x00, 0xbc,
                            0x02, 0x04, 0xaa, 0xaf,
                            0x02, 0x05, 0x00, 0xbd,
                            0x02, 0x04, 0x6a, 0xaa,
                            0x02, 0x05, 0x00, 0xbe,
                            0x02, 0x04, 0x1c, 0x02,
                            0x02, 0x05, 0x00, 0xc0,
                            0x02, 0x04, 0x00, 0xff,
                            0x02, 0x05, 0x00, 0xc1,
                            0x02, 0x04, 0x0f, 0xa6
                        },
                    },
                },
            },
        },
    })
}
//EOF
