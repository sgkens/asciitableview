
# AsciTableView

![license-badge][license-badge]

A simple powershell module to output objects as an ascii table.

## Features
- Output objects as an ascii table.
- Customize the table format.
- customize the table color pallet.
- Alias `watw` to output objects as an ascii table.

# Installation

Module can be installed from the PowerShell Gallery or downloaded from GitHub.

### 📦 PowerShell Gallery
```powershell
Install-Module -Name AsciTableView
```
### 📦 GitHub
```powershell
Clone https://github.com/phellams/asciitableview.git
cd asciitableview
Import-Module .\
```

### 📦 Build Artifacts from source
```powershell
git clone https://github.com/phellams/asciitableview/releases/download/{$VERSION}/asciitableview-v{$VERSION}.zip
Expand-Archive -Path .\asciitableview.zip -DestinationPath .\asciitableview
cd asciitableview
Import-Module .\
```
## Usage

#### 🔘 Write-AsciiTable
🔸 Parameters
- `InputObject` - The input object to write to the table.
- `Property` - The properties of the input object to include in the table.
- `Format` - A hashtable that specifies the format of the table, e.g: `@{name = 'left', 'length' = 'right', 'baseName' = 'center'}`
- `NoHeader` - Specifies that the table header should not be displayed.
- `BorderStyle` - Specifies the style of the table border.
- `MaxWidth` - Specifies the maximum width of the table.
- `TrimContent` - Specifies that the content of the table should be trimmed to fit the table width.
- `Alignment` - Specifies the alignment of the table content.
- `ColorPallet` - Specifies the color pallet of the table.


**Example Output:**

```pre
+---------------------+--------+----------------+
| Name                | Length | BaseName       |
+---------------------+--------+----------------+
| libs                | 1      | libs           |
| tests               | 1      | tests          |
| asciitableview.psd1 | 2412   | asciitableview |
| asciitableview.psm1 | 206    | asciitableview |
| readme.md           | 1438   | readme         |
+---------------------+--------+----------------+
```

> 🦜 Note!
> 

**Examples:**

🔹 Output psobject as an ascii table.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName
```

🔹 Output psobject as an ascii table with custom format.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -Format @{name = 'left', 'length' = 'right', 'baseName' = 'center'}
```
🔹 Output psobject as an ascii table with custom format and color pallet.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -Format @{name = 'left', 'length' = 'right', 'baseName' = 'center'} -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
```

🔹 Output psobject as an ascii table with custom alignment.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -Alignment @{Name = "right"; Length = "left"; BaseName = "center"}
```

🔹 Output psobject as an ascii table with custom alignment and color pallet.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -Alignment @{Name = "right"; Length = "left"; BaseName = "center"} -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
```

🔹 Output psobject as an ascii table with custom border style.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single
```

🔹 Output psobject as an ascii table with custom border style and color pallet.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
```

🔹 Output psobject as an ascii table with custom border style, max width and trim content.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -MaxWidth 50 -TrimContent
```

🔹 Output psobject as an ascii table with custom border style, max width, trim content and alignment.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -MaxWidth 50 -TrimContent -Alignment @{Name = "left"; Length = "right"; BaseName = "center"}
```

🔹 Output psobject as an ascii table with custom border style, max width, trim content, alignment and color pallet.

```powershell
dir | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -MaxWidth 50 -TrimContent -Alignment @{Name = "left"; Length = "right"; BaseName = "center"} -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
```


# License

This project is released under the [MIT License](LICENSE)






[license-badge]: https://img.shields.io/badge/License-MIT-Blue?style=for-the-badge&labelColor=%232D2D34&color=%2317202a