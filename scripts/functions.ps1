# Define yes for choices
$yes = @("y","ye","yes","yea","yeah")

# Function to create directories if they do not exist 
function createFolder {
    param (
        $newpath
    )
    If(!(Test-Path -PathType Container "$newpath"))
    {
        New-Item -ItemType Directory -Path "$newpath"
    }
}

# Function to create hardlinks with -Force option if file exists
function createHardLink {
    param (
        $link,
        $file
    )
    If(!(Test-Path -PathType Leaf "$link"))
    {
        New-Item -ItemType HardLink -Path "$link" -Target "$file"
    }
    else {
        $response = Read-Host -Prompt "$link Exists. Do you want to overwrite?"
        if ($yes -contains $response) {
            New-Item -ItemType HardLink -Path "$link" -Target "$file" -Force
        }
    }
}
