Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object System.Windows.Forms.Form
$Form.Size = "250,150"
$Form.Startposition = "CenterScreen"
$Form.Text = "progress"

$Bar = New-Object System.Windows.Forms.ProgressBar
$Bar.Location = "15,40"
$Bar.Size = "200,20"
$Bar.Maximum = "20"
$Bar.Minimum = "0"
$Bar.Style = "Block"

function main() {
  Write-Host "start"

  $Form.Controls.AddRange(@($Bar))
  $Form.Show()

  For ( $i = 0 ; $i -lt 20 ; $i++ ){
    $Bar.Value = $i+1
    start-sleep -s 1
    }

  [System.Windows.Forms.MessageBox]::Show("Done", "info")
  $Form.Close()

  exit
}
main