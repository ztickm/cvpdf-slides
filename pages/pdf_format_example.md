## PDF FORMAT EXAMPLE

<v-switch transition>
<template #0>
Consider this simple PDF file
<img src="/pdf_screenshot.png" class="crop"></img>
</template>
<template #1>
If we open it with a text editor
```ts {*}{maxHeight:'400px', lines:true}
%PDF-2.0
%����
1 0 obj<</Pages 2 0 R/Type/Catalog>>
endobj
2 0 obj<</Count 1/Kids[3 0 R]/Type/Pages>>
endobj
3 0 obj<</Contents 4 0 R/MediaBox[0 0 612 792]/Parent 2 0 R/Resources<</Font<</F0 5 0 R/F1 6 0 R>>>>/Type/Page>>
endobj
4 0 obj<</Filter/FlateDecode/Length 167>>stream
x����
�@E���,�f��8���]+��U|����V�
E	���rsP:,��C%�8�2l�����n����!1(�*�qyAȂ�\0Y�O�"�!ñ
�Dw��q�&��z�� *��Ez�����Ѻ���fƘ蘜"��G��!b�H��v�몝!��x��K�
endstream
endobj
5 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-Roman>>
endobj
6 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica>>
endobj
7 0 obj<</CreationDate(D:20250401212815+02'00')/ModDate(D:20250401212815+02'00')>>
endobj
xref
0 8
0000000000 65535 f
0000000015 00000 n
0000000059 00000 n
0000000109 00000 n
0000000229 00000 n
0000000462 00000 n
0000000526 00000 n
0000000588 00000 n
trailer
<</Root 1 0 R/Info 7 0 R/ID[<42841C13BBF709D79A200FA1691836F8><537FA2D8DBAC9E7F1F517F53E389BA56>]/Size 8>>
startxref
678
%%EOF
```
</template>

<template #2-8>
If we decompress it:
```ts {all|4-9|11-17|19-35|37-82|107-127}{at:3, maxHeight:'400px', lines:true}
  %PDF-1.0
  %����

  1 0 obj
  <<
  /Type /Catalog
  /Pages 2 0 R
  >>
  endobj

  2 0 obj
  <<
  /Kids [3 0 R]
  /Type /Pages
  /Count 1
  >>
  endobj

  3 0 obj
  <<
  /pdftk_PageNum 1
  /Contents 4 0 R
  /Type /Page
  /Resources 
  <<
  /Font 
  <<
  /F0 5 0 R
  /F1 6 0 R
  >>
  >>
  /Parent 2 0 R
  /MediaBox [0 0 612 792]
  >>
  endobj

  4 0 obj
  <<
  /Length 336
  >>
  stream
  q
  .2941177 .6901961 .3137255 rg
  .2941177 .6901961 .3137255 RG
  BT
  90.5899963 685.5 Td
  /F0 16 Tf
  (This)Tj
  ( )Tj
  (is)Tj
  ( )Tj
  (a)Tj
  ( )Tj
  (sample)Tj
  ( )Tj
  (text)Tj
  0 0 0 rg
  0 0 0 RG
  /F1 12 Tf
  ( )Tj
  ET
  Q
  q
  0 0 0 rg
  0 0 0 RG
  BT
  107.0299988 668.8300171 Td
  /F0 12 Tf
  (This)Tj
  ( )Tj
  (is)Tj
  ( )Tj
  (another)Tj
  ( )Tj
  (text)Tj
  /F1 12 Tf
  ( )Tj
  ET
  Q

  endstream 
  endobj

  5 0 obj
  <<
  /Subtype /Type1
  /Type \/Font
  /BaseFont /Times-Roman
  >>
  endobj

  6 0 obj
  <<
  /Subtype /Type1
  /Type /Font
  /BaseFont /Helvetica
  >>
  endobj

  7 0 obj
  <<
  /ModDate (D:20250401212815+02'00')
  /CreationDate (D:20250401212815+02'00')
  >>
  endobj

  xref
  0 8
  0000000000 65535 f 
  0000000015 00000 n 
  0000000066 00000 n 
  0000000125 00000 n 
  0000000282 00000 n 
  0000000672 00000 n 
  0000000746 00000 n 
  0000000818 00000 n 

  trailer
  <<
  /Info 7 0 R
  /ID [<42841c13bbf709d79a200fa1691836f8> <537fa2d8dbac9e7f1f517f53e389ba56>]
  /Root 1 0 R
  /Size 8
  >>
  startxref
  915
  %%EOF
```
  </template>
</v-switch>