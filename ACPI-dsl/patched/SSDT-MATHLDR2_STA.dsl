/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLuXUxXl.aml, Sun Dec 22 01:24:59 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000011E (286)
 *     Revision         0x02
 *     Checksum         0x8A
 *     OEM ID           "hack"
 *     OEM Table ID     "MATHLDR2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "MATHLDR2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.LDR2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.LDR2.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.MATH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.MATH.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (SPTH, IntObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.MATH)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.MATH.XSTA ())
            }
        }
    }

    Scope (_SB.PCI0.LPCB.LDR2)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.LDR2.XSTA ())
            }
        }
    }
}

