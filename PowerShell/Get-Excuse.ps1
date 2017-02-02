<#
.Synopsis
   Get a random excuse for not going in to work today.
.DESCRIPTION
   Inspired by a friend of mine, and his inspired reasons for staying at home on work days.
.EXAMPLE
   Get-Excuse
   I'm feeling a bit ill
#>
Function Get-Excuse {
    $Excuses = (
        "My alarm didn't go off this morning, so I overslept.",
        "There must have been a power cut overnight, so my alarm clock didn't go off.",
        "My phone battery must have died overnight, so my alarm didn't go off.",
        "I'm feeling a bit ill.",
        "I saw my family over the weekend. They're always ill. Now I'm ill as well.",
        "Train problems this morning.",
        "I had a drink last night. Overslept.",
        "My boiler's broken."
    )
    $Excuses | Get-Random
}