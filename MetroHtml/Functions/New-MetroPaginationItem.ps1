function New-MetroPaginationItem {
 
[CmdletBinding()]
    param(
    [System.Management.Automation.SwitchParameter] 
    $IsCurrent, 

    [System.Management.Automation.SwitchParameter] 
    $IsDisabled, 

    [System.Management.Automation.SwitchParameter] 
    $IsSpaces,

    [ValidateSet('0','10','20','30','40','50','60','70','80','90','100')]
    [string]
    ${Margin},

    [switch]
    ${NoMargin},

    [switch]
    ${NoMarginLeft},

    [switch]
    ${NoMarginRight},

    [switch]
    ${NoMarginTop},

    [switch]
    ${NoMarginBottom},

    [ValidateSet('0','10','20','30','40','50','60','70','80','90','100')]
    [string]
    ${Padding},

    [switch]
    ${NoPadding},

    [switch]
    ${NoPaddingLeft},

    [switch]
    ${NoPaddingRight},

    [switch]
    ${NoPaddingTop},

    [switch]
    ${NoPaddingBottom},

    [ValidateSet('PlaceLeft','PlaceRight','NoFloat','ClearFloat')]
    [string]
    ${Floating},

    [ValidateSet('Shadow','BlockShadow','BlockShadowImpact','BottomShadow','TextShadow','BlockShadowSuccess','BlockShadowInfo','BlockShadowDanger','BlockShadowError','BlockShadowWarning')]
    [string]
    ${Shadow},

    [ValidateSet('45','90','135','180','225','270','360')]
    [string]
    ${Rotate},

    [switch]
    ${IsDebug},

    [ProfileColors]
    ${ProfileColor},

    [MetroPredefinedColors]
    ${ForegroundColor},

    [MetroPredefinedColors]
    ${BackgroundColor},

    [MetroPredefinedColors]
    ${HoverForegroundColor},

    [MetroPredefinedColors]
    ${HoverBackgroundColor},

    [MetroPredefinedColors]
    ${ActiveForegroundColor},

    [MetroPredefinedColors]
    ${ActiveBackgroundColor},

    [MetroPredefinedColors]
    ${RibbedBackgroundColor},

    [ValidateSet('Top','Bottom','Baseline','Middle','Sub','Super','TopText','BottomText')]
    [string]
    ${VerticalAlign},

    [switch]
    ${IsHidden},

    [AngleSharp.Dom.Html.IHtmlMenuElement]
    ${ContextMenu},

    [switch]
    ${IsDraggable},

    [string]
    ${AccessKey},

    [string]
    ${Language},

    [string]
    ${Title},

    [string]
    ${Direction},

    [switch]
    ${IsSpellChecked},

    [int]
    ${TabIndex},

    [string]
    ${ContentEditable},

    [switch]
    ${IsTranslated},

    [string]
    ${Slot},

    [string]
    ${TextContent},

    [Alias('ClassName')]
    [string[]]
    ${Class},

    [string]
    ${Id},

    [switch]
    ${IsFocused},

    [AngleSharp.Url]
    ${BaseUrl},

    [string]
    ${NodeValue},

    [hashtable]
    ${Attributes},

    [Alias('CSS')]
    [hashtable]
    ${Style},

    [hashtable]
    ${Data},

    [Alias('AppendNode')]
    [System.Object]
    ${Append},

    [System.Object]
    ${Prepend},

    [Parameter(ParameterSetName='Remaining', ValueFromRemainingArguments=$true)]
    [System.Object]
    ${RemainingArguments}
    )
    
    begin {
      $PSBoundParametersKeys = $PSBoundParameters.Keys  
    $null = $PSBoundParameters.Remove("Class") 
    if ($Class.Count -gt 0) { $PSBoundParameters["ClassName"] = ($Class -join " ").Trim() } 
      $PSBoundParameters.ClassName =  [string[]]@($PSBoundParameters.ClassName, 'item')
 

      if ('IsCurrent' -in $PSBoundParametersKeys) { 
            $PSBoundParameters["ClassName"] = [string[]]@($PSBoundParameters["ClassName"], 'current')    
            $null = $PSBoundParameters.Remove('IsCurrent') 
      } 
 

      if ('IsDisabled' -in $PSBoundParametersKeys) { 
            $PSBoundParameters["ClassName"] = [string[]]@($PSBoundParameters["ClassName"], 'disabled')    
            $null = $PSBoundParameters.Remove('IsDisabled') 
      } 
 

      if ('IsSpaces' -in $PSBoundParametersKeys) { 
            $PSBoundParameters["ClassName"] = [string[]]@($PSBoundParameters["ClassName"], 'spaces')    
            $null = $PSBoundParameters.Remove('IsSpaces') 
      } 


    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer))
        {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand('New-MetroSpan', [System.Management.Automation.CommandTypes]::Function)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters }
        $steppablePipeline = $scriptCmd.GetSteppablePipeline()
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }


	}

    process {

    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }


	}

    end {

    try {
        $steppablePipeline.End()
    } catch {
        throw
    }


	}

}
