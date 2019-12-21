/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLfOYp5E.aml, Sun Dec 22 01:24:45 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007C (124)
 *     Revision         0x02
 *     Checksum         0x3B
 *     OEM ID           "hack"
 *     OEM Table ID     "elan"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "elan", 0x00000000)
{
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.I2C1)
    {
        If (_OSI ("Darwin"))
        {
            Name (USTP, One)
            Name (SSCN, Package (0x03)
            {
                0x0210, 
                0x0280, 
                0x1E
            })
            Name (FMCN, Package (0x03)
            {
                0x80, 
                0xA0, 
                0x1E
            })
        }
    }
}

