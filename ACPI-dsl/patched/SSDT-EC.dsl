/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLSL1LkZ.aml, Sun Dec 22 01:24:10 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000048 (72)
 *     Revision         0x02
 *     Checksum         0x15
 *     OEM ID           "hack"
 *     OEM Table ID     "fakeEC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "fakeEC", 0x00000000)
{
    Device (_SB.PCI0.LPCB.EC)
    {
        Name (_HID, "ACID0001")  // _HID: Hardware ID
    }
}

