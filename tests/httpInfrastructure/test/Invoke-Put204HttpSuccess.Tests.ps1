$TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-Put204HttpSuccess.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Invoke-Put204HttpSuccess' {
    It 'Put204' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
