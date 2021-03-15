proc is_7zip*(buf: string): string =
  if buf.len > 5 and
  buf[0].byte == 0x37 and
  buf[1].byte == 0x7A and
  buf[2].byte == 0xBC and
  buf[3].byte == 0xAF and
  buf[4].byte == 0x27 and
  buf[5].byte == 0x1C:
    result = "7z"


proc is_ar*(buf: string): string =
  if buf.len > 6 and
  buf[0].byte == 0x21 and
  buf[1].byte == 0x3C and
  buf[2].byte == 0x61 and
  buf[3].byte == 0x72 and
  buf[4].byte == 0x63 and
  buf[5].byte == 0x68 and
  buf[6].byte == 0x3E:
    result = "ar"


proc is_bz2*(buf: string): string =
  if buf.len > 2 and
  buf[0].byte == 0x42 and
  buf[1].byte == 0x5A and
  buf[2].byte == 0x68:
    result = "bz2"


proc is_cab*(buf: string): string =
  if buf.len > 3 and
  (buf[0].byte == 0x4D and
   buf[1].byte == 0x53 and
   buf[2].byte == 0x43 and
   buf[3].byte == 0x46) or
  (buf[0].byte == 0x49 and
   buf[1].byte == 0x53 and
   buf[2].byte == 0x63 and
   buf[3].byte == 0x28):
     result = "cab"


proc is_crx*(buf: string): string =
  if buf.len > 3 and
  buf[0].byte == 0x43 and
  buf[1].byte == 0x72 and
  buf[2].byte == 0x32 and
  buf[3].byte == 0x34:
    result = "crx"


proc is_deb*(buf: string): string =
  if buf.len > 20 and
  buf[0].byte == 0x21 and
  buf[1].byte == 0x3C and
  buf[2].byte == 0x61 and
  buf[3].byte == 0x72 and
  buf[4].byte == 0x63 and
  buf[5].byte == 0x68 and
  buf[6].byte == 0x3E and
  buf[7].byte == 0x0A and
  buf[8].byte == 0x64 and
  buf[9].byte == 0x65 and
  buf[10].byte == 0x62 and
  buf[11].byte == 0x69 and
  buf[12].byte == 0x61 and
  buf[13].byte == 0x6E and
  buf[14].byte == 0x2D and
  buf[15].byte == 0x62 and
  buf[16].byte == 0x69 and
  buf[17].byte == 0x6E and
  buf[18].byte == 0x61 and
  buf[19].byte == 0x72 and
  buf[20].byte == 0x79:
    result = "deb"


proc is_eot*(buf: string): string =
  if buf.len > 35 and
  buf[34].byte == 0x4C and
  buf[35].byte == 0x50 and
  (buf[8].byte == 0x02 and
   buf[9].byte == 0x00 and
   buf[10].byte == 0x01) or
  (buf[8].byte == 0x01 and
   buf[9].byte == 0x00 and
   buf[10].byte == 0x00) or
  (buf[8].byte == 0x02 and
   buf[9].byte == 0x00 and
   buf[10].byte == 0x02):
     result = "eot"


proc is_epub*(buf: string): string =
  if buf.len > 57 and
  buf[0].byte == 0x50 and
  buf[1].byte == 0x4B and
  buf[2].byte == 0x3 and
  buf[3].byte == 0x4 and
  buf[30].byte == 0x6D and
  buf[31].byte == 0x69 and
  buf[32].byte == 0x6D and
  buf[33].byte == 0x65 and
  buf[34].byte == 0x74 and
  buf[35].byte == 0x79 and
  buf[36].byte == 0x70 and
  buf[37].byte == 0x65 and
  buf[38].byte == 0x61 and
  buf[39].byte == 0x70 and
  buf[40].byte == 0x70 and
  buf[41].byte == 0x6C and
  buf[42].byte == 0x69 and
  buf[43].byte == 0x63 and
  buf[44].byte == 0x61 and
  buf[45].byte == 0x74 and
  buf[46].byte == 0x69 and
  buf[47].byte == 0x6F and
  buf[48].byte == 0x6E and
  buf[49].byte == 0x2F and
  buf[50].byte == 0x65 and
  buf[51].byte == 0x70 and
  buf[52].byte == 0x75 and
  buf[53].byte == 0x62 and
  buf[54].byte == 0x2B and
  buf[55].byte == 0x7A and
  buf[56].byte == 0x69 and
  buf[57].byte == 0x70:
    result = "epub"


proc is_exe*(buf: string): string =
  if buf.len > 1 and
  buf[0].byte == 0x4D and
  buf[1].byte == 0x5A:
    result = "exe"


proc is_gzip*(buf: string): string =
  if buf.len > 2 and
  buf[0].byte == 0x1F and
  buf[1].byte == 0x8B and
  buf[2].byte == 0x8:
    result = "gz"


proc is_lzip*(buf: string): string =
 if buf.len > 3 and
 buf[0].byte == 0x4C and
 buf[1].byte == 0x5A and
 buf[2].byte == 0x49 and
 buf[3].byte == 0x50:
   result = "lz"


proc is_nes*(buf: string): string =
  if buf.len > 3 and
  buf[0].byte == 0x4E and
  buf[1].byte == 0x45 and
  buf[2].byte == 0x53 and
  buf[3].byte == 0x1A:
    result = "nes"


proc is_pdf*(buf: string): string =
  if buf.len > 3 and
  buf[0].byte == 0x25 and
  buf[1].byte == 0x50 and
  buf[2].byte == 0x44 and
  buf[3].byte == 0x46:
    result = "pdf"


proc is_ps*(buf: string): string =
  if buf.len > 1 and
  buf[0].byte == 0x25 and
  buf[1].byte == 0x21:
    result = "ps"


proc is_rar*(buf: string): string =
  if buf.len > 6 and
  buf[0].byte == 0x52 and
  buf[1].byte == 0x61 and
  buf[2].byte == 0x72 and
  buf[3].byte == 0x21 and
  buf[4].byte == 0x1A and
  buf[5].byte == 0x7 and
  (buf[6].byte == 0x0 or
   buf[6].byte == 0x1):
     result = "rar"


proc is_rtf*(buf: string): string =
  if buf.len > 4 and
  buf[0].byte == 0x7B and
  buf[1].byte == 0x5C and
  buf[2].byte == 0x72 and
  buf[3].byte == 0x74 and
  buf[4].byte == 0x66:
    result = "rtf"


proc is_sqlite*(buf: string): string =
  if buf.len > 3 and
  buf[0].byte == 0x53 and
  buf[1].byte == 0x51 and
  buf[2].byte == 0x4C and
  buf[3].byte == 0x69:
    result = "sqlite"


proc is_swf*(buf: string): string =
  if buf.len > 2 and
  (buf[0].byte == 0x43 or
   buf[0].byte == 0x46) and
  buf[1].byte == 0x57 and
  buf[2].byte == 0x53:
    result = "swf"


proc is_tar*(buf: string): string =
  if buf.len > 261 and
  buf[257].byte == 0x75 and
  buf[258].byte == 0x73 and
  buf[259].byte == 0x74 and
  buf[260].byte == 0x61 and
  buf[261].byte == 0x72:
    result = "tar"


proc is_xz*(buf: string): string =
  if buf.len > 5 and
  buf[0].byte == 0xFD and
  buf[1].byte == 0x37 and
  buf[2].byte == 0x7A and
  buf[3].byte == 0x58 and
  buf[4].byte == 0x5A and
  buf[5].byte == 0x00:
    result = "xz"


proc is_z*(buf: string): string =
  if buf.len > 1 and
  (buf[0].byte == 0x1F and
   buf[1].byte == 0xA0) or
  (buf[0].byte == 0x1F and
   buf[1].byte == 0x9D):
     result = "Z"


proc is_zip*(buf: string): string =
  if buf.len > 3 and
  buf[0].byte == 0x50 and
  buf[1].byte == 0x4B and
  (buf[2].byte == 0x3 or
   buf[2].byte == 0x5 or
   buf[2].byte == 0x7) and
  (buf[3].byte == 0x4 or
   buf[3].byte == 0x6 or
   buf[3].byte == 0x8):
     result = "zip"