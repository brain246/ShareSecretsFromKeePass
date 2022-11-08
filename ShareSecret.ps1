param
(
    [string]$desc = "",
    [Parameter(Mandatory=$true)]
    [string]$user,
    [Parameter(Mandatory=$true)]
    [string]$pass
)

# Set name for email signature
$email_sig = "John Doe"

# Prepare secret-message
$message = -join("Secret:`n", $desc, "`n`nUsername:`n", $user, "`n`nPassword:`n", $pass)

# Prepare params for Api call
$params = @{
    Uri    = 'https://onetimesecret.com/api/v1/share'
    Method = 'POST'
    Body   = @{secret=$message}
}

# Call the Api 
$ret = ConvertFrom-JSON(Invoke-WebRequest @params)

# Prepare the mailto link
$body = [uri]::EscapeDataString("Dear Sir or Madam,`n`nA secret has been shared with you: https://onetimesecret.com/secret/$($ret.secret_key)`n`nThis is an automated message.`n`nKind regards,`n$email_sig")

# Open the mailto link
Start-Process "mailto:?Subject=OneTimeSecret&Body=$body"