param (
    [Parameter(Mandatory=$true)]
    [ValidateSet("up", "down")]
    [string]$Action
)

# .\manage_compose.ps1 -Action down/up
# List of directories containing docker-compose.yml files (relative paths)
$composeDirs = @(
    ".\postgres",
    ".\webgis-api",
    ".\geoserver",
    ".\tomcat",
    ".\nginx"
)

# Check if docker-compose or nerdctl is available
$composeCommand = if (Get-Command nerdctl -ErrorAction SilentlyContinue) { "nerdctl compose" } else { "docker-compose" }
if (-not (Get-Command $composeCommand.Split()[0] -ErrorAction SilentlyContinue)) {
    Write-Host "Error: $composeCommand is not installed or not in PATH. Ensure Docker Desktop or Rancher Desktop is running."
    exit 1
}

# Store the original directory
$originalDir = Get-Location

foreach ($dir in $composeDirs) {
    try {
        # Resolve relative path to absolute
        $resolvedDir = Resolve-Path -Path $dir -ErrorAction Stop
        $composeFile = Join-Path $resolvedDir "docker-compose.yml"
        
        if (Test-Path $composeFile) {
            Write-Host "Processing $composeFile"
            Set-Location $resolvedDir
            if ($Action -eq "up") {
                Invoke-Expression "$composeCommand up -d"
            }
            elseif ($Action -eq "down") {
                Invoke-Expression "$composeCommand down"
            }
        }
        else {
            Write-Host "No docker-compose.yml found in $dir"
        }
    }
    catch {
        Write-Host "Error processing $dir : $_"
    }
    finally {
        # Always return to the original directory after each execution
        Set-Location $originalDir
    }
}

Write-Host "All operations completed. Current directory: $originalDir"