/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL44AayP.aml, Mon Dec 30 03:15:48 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000116 (278)
 *     Revision         0x02
 *     Checksum         0x7E
 *     OEM ID           "hack"
 *     OEM Table ID     "CC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "CC", 0x00000000)
{
    Name (_SB.PCI0.HDAS.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x06)
        {
            "Custom Commands", 
            Package (0x03)
            {
                Package (0x00){}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x97, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">n", 
            "Perform Reset on External Wake", 
            ">n"
        }
    })
}

