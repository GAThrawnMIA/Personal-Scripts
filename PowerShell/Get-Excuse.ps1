<#
.Synopsis
    Random excuse generator.
.DESCRIPTION
    Get a random excuse for not going in to work today.
    Inspired by a friend of mine, and his inspired reasons for staying at home on work days.
.PARAMETER Type
    The type of excuse you'd like, one of:
    alarm, ill, train, hangover, home, weather
.EXAMPLE
    Get-Excuse
    I'm feeling a bit ill
.EXAMPLE
    Get-Excuse -Type train
    I checked the rail website and my train's running 10 minutes late today. Stayed in bed.
.NOTES
    Written by James Blatchford, February 2017
    https://github.com/GAThrawnMIA/Personal-Scripts/blob/master/PowerShell/Get-Excuse.ps1
#>
Function Get-Excuse {
    Param (
        [Parameter(Mandatory=$false)]
        [ValidateSet("alarm", "ill", "train", "hangover", "home", "weather")]
        $Type)
    
    $excuses = @{"My alarm didn't go off this morning, so I overslept." = "alarm";
        "There must have been a power cut overnight, so my alarm clock didn't go off." = "alarm";
        "My phone battery must have died overnight, so my alarm didn't go off." = "alarm";
        "I'm feeling a bit ill." = "ill";
        "I saw my family over the weekend. They're always ill. Now I'm ill as well." = "ill";
        "Train problems this morning." = "train";
        "A train de-railed at Lewisham earlier this week." = "train";
        "There's been engineering works at London Bridge for the last year." = "train";
        "I checked the rail website and my train's running 10 minutes late today. Stayed in bed." = "train";
        "I had a drink last night. Overslept." = "hangover";
        "My boiler's broken." = "home";
        "There's a man coming round to look at my boiler." = "home";
        "It's raining." = "weather";
        "It's snowy." = "weather";
        "It's too hot." = "weather";
        "It's too cold." = "weather";
        }
    
    If ($Type) {
        ($Excuses.GetEnumerator() | where {$_.Value -eq $Type}).Name | Get-Random
    }
    Else {
        $excuses.Keys | Get-Random
    }
}