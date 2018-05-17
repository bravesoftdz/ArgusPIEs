object frmImportContours: TfrmImportContours
  Left = 488
  Top = 138
  HelpContext = 200
  Caption = 'Import Contours'
  ClientHeight = 446
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHelp = FormHelp
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 446
    ActivePage = tabXY
    Align = alClient
    TabOrder = 0
    object tabXY: TTabSheet
      Caption = 'Contour Coordinates'
      object sgContourCoordinates: TStringGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 305
        Align = alClient
        ColCount = 3
        RowCount = 3
        FixedRows = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goColMoving, goEditing, goTabs]
        TabOrder = 0
        OnColumnMoved = sgContourCoordinatesColumnMoved
        OnMouseMove = sgContourCoordinatesMouseMove
        OnRowMoved = sgContourCoordinatesRowMoved
      end
      object Panel1: TPanel
        Left = 0
        Top = 305
        Width = 624
        Height = 107
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 7
          Top = 7
          Width = 78
          Height = 38
          Caption = 'Number of contours'
          WordWrap = True
        end
        object Label2: TLabel
          Left = 89
          Top = 7
          Width = 74
          Height = 57
          Caption = 'Maximum number of points'
          WordWrap = True
        end
        object seContourCount: TSpinEdit
          Left = 7
          Top = 68
          Width = 52
          Height = 29
          MaxValue = 2147483647
          MinValue = 1
          TabOrder = 0
          Value = 1
          OnChange = seContourCountChange
        end
        object btnOK: TBitBtn
          Left = 546
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnOKClick
          Kind = bkOK
        end
        object btnCancel: TBitBtn
          Left = 465
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 2
          Kind = bkCancel
        end
        object rgCoordinateDataFormat: TRadioGroup
          Left = 172
          Top = 7
          Width = 205
          Height = 90
          Caption = 'Data Format'
          ItemIndex = 0
          Items.Strings = (
            'Tab-delimited'
            'Comma/Space-delimited'
            'Argus contour format')
          TabOrder = 3
          OnClick = rgCoordinateDataFormatClick
        end
        object BitBtn1: TBitBtn
          Left = 384
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 4
          Kind = bkHelp
        end
        object sePointCount: TSpinEdit
          Left = 89
          Top = 68
          Width = 53
          Height = 29
          MaxValue = 2147483647
          MinValue = 1
          TabOrder = 5
          Value = 1
          OnChange = sePointCountChange
        end
        object btnPaste: TBitBtn
          Left = 464
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Paste from clipboard'
          Caption = '&Paste'
          TabOrder = 6
          OnClick = btnPasteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
            FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
            FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
            FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
            0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
            9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
            9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
            99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
            93337777FF777777733370000000073333333777777773333333}
          NumGlyphs = 2
        end
        object btnFile: TBitBtn
          Left = 544
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Read from file'
          Caption = '&Open'
          TabOrder = 7
          OnClick = btnFileClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object cbRowImportCoordinates: TCheckBox
          Left = 384
          Top = 48
          Width = 233
          Height = 17
          Caption = 'Import into selected row'
          TabOrder = 8
        end
      end
    end
    object tabParameters: TTabSheet
      Caption = 'Parameter Values'
      ImageIndex = 2
      object sgParameters: TStringGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 305
        Align = alClient
        RowCount = 3
        FixedRows = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goColMoving, goEditing, goTabs]
        TabOrder = 0
        OnColumnMoved = sgContourCoordinatesColumnMoved
        OnMouseMove = sgContourCoordinatesMouseMove
        OnRowMoved = sgParametersRowMoved
      end
      object Panel2: TPanel
        Left = 0
        Top = 305
        Width = 624
        Height = 107
        Align = alBottom
        TabOrder = 1
        object Label3: TLabel
          Left = 7
          Top = 7
          Width = 78
          Height = 38
          Caption = 'Number of contours'
          WordWrap = True
        end
        object seContourCount2: TSpinEdit
          Left = 7
          Top = 68
          Width = 52
          Height = 29
          MaxValue = 2147483647
          MinValue = 1
          TabOrder = 0
          Value = 1
          OnChange = seContourCountChange
        end
        object BitBtn2: TBitBtn
          Left = 546
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnOKClick
          Kind = bkOK
        end
        object BitBtn3: TBitBtn
          Left = 465
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 2
          Kind = bkCancel
        end
        object rgParameterDataFormat: TRadioGroup
          Left = 172
          Top = 7
          Width = 205
          Height = 90
          Caption = 'Data Format'
          ItemIndex = 0
          Items.Strings = (
            'Tab-delimited'
            'Comma/Space-delimited'
            'Argus contour format')
          TabOrder = 3
          OnClick = rgParameterDataFormatClick
        end
        object BitBtn4: TBitBtn
          Left = 384
          Top = 72
          Width = 75
          Height = 25
          TabOrder = 4
          Kind = bkHelp
        end
        object btnPasteClipParameter: TBitBtn
          Left = 464
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Paste from clipboard'
          Caption = '&Paste'
          TabOrder = 5
          OnClick = btnPasteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
            FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
            FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
            FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
            0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
            9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
            9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
            99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
            93337777FF777777733370000000073333333777777773333333}
          NumGlyphs = 2
        end
        object btnFileParameter: TBitBtn
          Left = 544
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Read from file'
          Caption = '&Open'
          TabOrder = 6
          OnClick = btnFileClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object cbPasteinSelectedRow: TCheckBox
          Left = 384
          Top = 48
          Width = 233
          Height = 17
          Caption = 'Import into selected row'
          TabOrder = 7
        end
      end
    end
    object tabAbout: TTabSheet
      Caption = 'About'
      ImageIndex = 1
      object Image1: TImage
        Left = 7
        Top = 13
        Width = 258
        Height = 92
        Picture.Data = {
          09544D65746166696C65EE290000D7CDC69A000000000000BC07DA02E8030000
          00009F51010009000003EA1400000400E8000000000004000000030108000500
          00000B0200000000050000000C02010001000400000003010800050000000B02
          00000000050000000C0201000100050000000C02DA005202050000000B020000
          0000040000000601010007000000FC020000006F41000000040000002D010000
          09000000FA02050000000000FFFFFF002200040000002D010100040000000601
          01006200000024032F001501030015016D001501760013017E000F0186000A01
          8D000701900003019300FF009500FA009800F5009900EF009B00E9009B00E200
          9C00D6009B00CB009800C7009700C2009400BF009200BB008F00B8008C00B600
          8800B3008500B2008000AF007700AE006D00AE000300CE000300CE006B00CE00
          7200CF007700D1007C00D3007F00D6008200DA008400DD008500E2008500E600
          8500EA008300EE008100F1007E00F3007B00F4007600F5007100F6006B00F600
          03001501030009000000FA02000000000000000000002200040000002D010200
          07000000FC020000FFFFFF000000040000002D01030004000000F00100000700
          0000FC020000006F41000000040000002D010000040000002D01010004000000
          06010100DA00000024036B0049019C0042019B003B019B003601990031019800
          2D019500290193002601900023018D001F0186001D017D001C0174001C016B00
          3B016B003B0170003C0175003D0179003E017D00400180004301830048018500
          4D018500510185005401840057018200590180005B017E005C017B005D017800
          5D0174005D016F005B016B00570167005301630049015D003E01560038015200
          32014E002C014A002801450024013F00200139001E0132001E012A001E012200
          20011A002301130028010C002B010A002F010700330105003701030042010100
          500100005A010100640103006B01060072010B0074010E007701110078011500
          7A0119007B0122007B012D005D012D005D0129005C0125005B0121005A011E00
          58011B0056011800520117004E0117004A011700470118004401190042011B00
          40011D003F0120003E0123003E0127003E012C00400130004401340048013700
          52013E005E0144006301480069014B006F0150007301550077015A007B016000
          7D0168007D0170007D0177007C017D007B0183007801870076018B0073018F00
          700192006C019400640198005B019A0052019B0049019C00040000002D010200
          040000002D01030004000000F001000007000000FC020000006F410000000400
          00002D010000040000002D0101000400000006010100DA00000024036B001D02
          9C0016029B0010029B000A0299000502980001029500FD019300FA019000F701
          8D00F3018600F1017D00F0017400F0016B0010026B0010027000100275001102
          790012027D0015028000180283001C0285002202850026028500290284002C02
          82002E02800030027E0031027B00320278003202740031026F002F026B002C02
          6700280263001E025D00120256000C02520006024E0001024A00FC014500F801
          3F00F5013900F3013200F2012A00F3012200F5011A00F8011300FD010C000002
          0A0003020700070205000C02030017020100240200002F020100380203004002
          060046020B0049020E004B0211004D0215004E0219005002220050022D003102
          2D003102290031022500300221002F021E002D021B002A021800270217002202
          17001F0217001C0218001902190016021B0015021D0013022000120223001202
          270013022C0015023000180234001C02370026023E0032024400380248003E02
          4B0043025000480255004C025A004F0260005102680052027000510277005102
          7D004F0283004D0287004A028B0047028F004402920040029400380298002F02
          9A0026029B001D029C00040000002D010200040000002D01030004000000F001
          000007000000FC020000006F41000000040000002D010000040000002D010100
          0400000006010100CE00000024036500B8016100CB016100CB018200C9018300
          C8018300C6018400C4018400C2018500C0018500BE018500BC018600BA018600
          B4018500AF018400AB018100A8017C00A6017400A4016B00A3015E00A3014E00
          A3014300A3013900A4013000A6012700A8012000AB011B00AE011900B0011800
          B3011700B7011700BC011700C0011800C3011A00C6011D00C8012100C9012400
          C9012900CA012D00E9012D00E8012300E6011A00E2011200DC010C00D5010700
          CD010300C3010100B9010000B0010000A8010200A10104009B01070095010A00
          91010E008D0113008B01180088011E008601240085012A008401310083013E00
          83014D0083016000850171008601780088017F008A0185008D018A0090018E00
          94019200990195009F019800A5019900AD019B00B5019C00BE019C00C3019C00
          C9019B00CE019B00D4019A00DA019900DF019800E4019800E8019700E8019700
          E8019600E8019600E8019600E9019600E9019600E9019500E9019500E9019100
          E9018800E9017C00E9016E00E9016100E9015500E9014D00E9014A00B8014A00
          B8016100040000002D010200040000002D01030004000000F001000007000000
          FC020000006F41000000040000002D010000040000002D010100040000000601
          0100CA000000240363000900C7000900C8000900C8000900C9000900C9000900
          C9000900CA000900CA000900CA000900CB000900CB000900CB000A00CB000A00
          CC000A00CC000B00CC000B00CC000C00CC000C00CC000D00CB000D00CB000E00
          CB000E00CA000F00CA000F00C9000F00C7000D00C6000C00C5000900C4000700
          C2000500C1000400BF000400BC000500BA000600B9000700B7000900B6000B00
          B6000D00B5000F00B5001000B5001200B5001400B5001600B6001700B7001800
          B8001800B9001800BB001800BD001100BD001100BC001100BC001100BB001100
          BB001100BA001100BA001100BA001100B9001100B9001000B9001000B9001000
          B9001000B9000F00B9000F00B9000F00B9000E00B9000E00B9000D00B9000D00
          BA000C00BA000C00BA000C00BB000C00BC000C00BD000D00BE000F00BF001100
          C0001300C2001500C3001600C5001600C8001600CA001500CB001400CD001200
          CE001100CF000F00D0000D00D0000A00D0000800D0000600D0000400CF000300
          CF000200CD000200CC000200CA000200C7000900C700040000002D0102000400
          00002D01030004000000F001000007000000FC020000006F4100000004000000
          2D010000040000002D01010004000000060101008A000000240343002900BF00
          2900BD002900BC002900BB002900BB002900BA002800BA002800B9002700B900
          2600BA002500BA002400BB002400BC002300BD002300BE002200C0002200C200
          2100C4002100C7002100C8002100CA002100CB002100CB002200CB002300CC00
          2400CB002500CB002500CB002600CA002700C9002700C8002700C7002800C600
          2F00C6002E00C9002D00CB002C00CC002B00CE002900CF002700D0002500D000
          2200D0001F00D0001D00CF001B00CE001A00CC001900CA001900C8001A00C500
          1A00C2001B00BF001C00BD001D00BB001E00B9002000B7002200B6002500B500
          2800B5002A00B5002C00B5002E00B6002F00B7003000B8003100BA003100BC00
          3100BF002900BF00040000002D010200040000002D01030004000000F0010000
          07000000FC020000006F41000000040000002D010000040000002D0101000400
          0000060101001A00000038050200050005003800D0003100D0003700B5003E00
          B5003800D0004000AB003F00B1003800B1003900AB004000AB00040000002D01
          0200040000002D01030004000000F001000007000000FC020000006F41000000
          040000002D010000040000002D01010004000000060101001A00000038050200
          050005009501D0008D01D0009301B5009B01B5009501D0009D01AB009C01B100
          9401B1009501AB009D01AB00040000002D010200040000002D01030004000000
          F001000007000000FC020000006F41000000040000002D010000040000002D01
          01000400000006010100A0000000380502003B0012004700C4004700C5004600
          C6004600C8004600C9004600CA004700CB004700CB004900CC004900CB004A00
          CB004B00CB004B00CA004C00C9004C00C9004D00C8004D00C7005400C7005400
          C8005400C9005300CA005300CB005200CC005100CC005100CD005000CE004F00
          CE004E00CF004D00CF004C00D0004B00D0004A00D0004900D0004800D0004400
          D0004200CF004000CE003F00CC003F00CA003F00C8003F00C5004000C2004000
          BF004100BD004200BB004300B9004500B7004700B6004A00B5004D00B5005100
          B5005300B6005500B7005600B9005600BB005600BE005600C1005500C4004700
          C4004F00C0004F00BF004F00BD004F00BC004F00BB004F00BB004E00BA004E00
          B9004C00B9004B00B9004A00BA004A00BB004900BC004900BD004800BE004800
          BF004800C0004F00C000040000002D010200040000002D01030004000000F001
          000007000000FC020000006F41000000040000002D010000040000002D010100
          04000000060101005800000024032A006300B8006300B8006400B7006500B600
          6600B6006600B5006700B5006800B5006900B5006A00B5006C00B5006D00B500
          6E00B6006F00B6006F00B7007000B8007000B9007000BA006B00D0006400D000
          6800BD006800BD006800BC006800BB006800BA006700BA006700BA006600B900
          6600B9006500B9006400BA006400BA006300BA006300BB006200BC006200BD00
          6200BD005E00D0005700D0005C00B5006400B5006300B800040000002D010200
          040000002D01030004000000F001000007000000FC020000006F410000000400
          00002D010000040000002D01010004000000060101008A000000240343008100
          BF008100BD008100BC008100BB008100BB008000BA008000BA007F00B9007F00
          B9007D00BA007D00BA007C00BB007B00BC007B00BD007A00BE007A00C0007900
          C2007900C4007800C7007800C8007800CA007900CB007900CB007A00CB007B00
          CC007B00CB007C00CB007D00CB007E00CA007E00C9007F00C8007F00C7007F00
          C6008700C6008600C9008500CB008400CC008200CE008000CF007E00D0007C00
          D0007A00D0007600D0007400CF007200CE007100CC007100CA007100C8007100
          C5007200C2007200BF007300BD007400BB007600B9007700B7007900B6007C00
          B5008000B5008200B5008400B5008600B6008700B7008800B8008800BA008800
          BC008800BF008100BF00040000002D010200040000002D01030004000000F001
          000007000000FC020000006F41000000040000002D010000040000002D010100
          0400000006010100A0000000380502003B0012009200C4009100C5009100C600
          9100C8009100C9009100CA009200CB009200CB009300CC009400CB009500CB00
          9600CB009600CA009700C9009700C9009700C8009800C7009F00C7009F00C800
          9E00C9009E00CA009E00CB009D00CC009C00CC009C00CD009B00CE009A00CE00
          9900CF009800CF009700D0009600D0009500D0009400D0009200D0008F00D000
          8D00CF008B00CE008A00CC008A00CA008A00C8008A00C5008B00C2008B00BF00
          8C00BD008D00BB008E00B9009000B7009200B6009500B5009800B5009C00B500
          9E00B600A000B700A100B900A100BB00A100BE00A100C100A000C4009200C400
          9900C0009A00BF009A00BD009A00BC009A00BB009A00BB009900BA009800B900
          9700B9009600B9009500BA009400BB009400BC009300BD009300BE009300BF00
          9300C0009900C000040000002D010200040000002D01030004000000F0010000
          07000000FC020000006F41000000040000002D010000040000002D0101000400
          0000060101004C00000024032400BF00B000BE00B000BD00B000BD00B000BC00
          B000BC00B100BB00B200BB00B200BB00B300BA00B500BE00B500BD00BA00B900
          BA00B500D000AD00D000B200BA00AF00BA00B000B500B300B500B300B300B400
          B100B500AF00B600AE00B700AC00B900AC00BB00AB00BE00AB00BE00AB00BE00
          AB00BF00AB00BF00AB00BF00AB00C000AB00C000AB00C000AB00BF00B0000400
          00002D010200040000002D01030004000000F001000007000000FC020000006F
          41000000040000002D010000040000002D01010004000000060101008A000000
          3805020021002100BD00C200BE00BF00BE00BD00BF00BB00C100B900C200B700
          C500B600C700B500CB00B500CE00B500D000B600D200B700D300B900D300BB00
          D300BD00D300BF00D300C200D200C500D100C800D000CA00CF00CC00CD00CE00
          CB00CF00C800D000C500D000C200D000BF00CF00BE00CE00BD00CC00BC00CA00
          BC00C800BC00C500BD00C200CB00C200CC00C000CC00BE00CC00BD00CC00BC00
          CC00BB00CB00BA00CB00BA00CA00B900C900BA00C800BA00C700BB00C600BC00
          C600BD00C500BE00C500C000C400C200C400C400C400C700C300C800C300CA00
          C400CB00C400CB00C500CB00C600CC00C700CB00C800CB00C800CB00C900CA00
          C900C800CA00C700CB00C400CB00C200040000002D010200040000002D010300
          04000000F001000007000000FC020000006F41000000040000002D0100000400
          00002D01010004000000060101003400000024031800E000B500DF00B900DF00
          B900E000B800E100B700E200B600E300B600E400B500E500B500E600B500E700
          B500E600BB00E400BB00E200BC00E100BC00E000BD00DF00BE00DE00BF00DE00
          C000DE00C100DB00D000D300D000D900B500E000B500040000002D0102000400
          00002D01030004000000F001000007000000FC020000006F4100000004000000
          2D010000040000002D0101000400000006010100D6000000380502004F001900
          0301CB000301CB000301CC000301CD000301CD000301CE000301CF000301CF00
          0301D000FC00D000FC00CC00FC00CC00FB00CD00FB00CE00FA00CF00F900CF00
          F800D000F700D000F600D000F400D000F300D000F100D000F000CF00EF00CE00
          EF00CD00EF00CB00EF00CA00EF00C800F000C500F100C300F300C100F500C000
          F700BF00FA00BF00FC00BF00FF00BF00FF00BD00FF00BC00FF00BB00FF00BB00
          FF00BA00FF00B900FF00B900FE00B900FD00B900FC00B900FB00B900FB00BA00
          FA00BA00FA00BB00FA00BB00FA00BC00F900BD00F200BD00F200BC00F300BB00
          F300BA00F400B900F400B800F500B700F500B700F600B600F700B600F800B600
          F900B500FA00B500FA00B500FB00B500FC00B500FE00B5000101B5000301B500
          0501B6000601B7000601B9000701BA000701BC000601BE000301CB00F600C800
          F600C800F600C900F600CA00F600CA00F700CB00F700CB00F800CC00F800CC00
          FA00CB00FB00CB00FC00CA00FC00C800FD00C700FD00C600FE00C400FE00C300
          FD00C300FB00C300FA00C300F900C400F800C400F800C500F700C600F600C800
          040000002D010200040000002D01030004000000F001000007000000FC020000
          006F41000000040000002D010000040000002D01010004000000060101008A00
          0000240343002101BF002101BD002101BC002101BB002101BB002101BA002001
          BA002001B9001F01B9001E01BA001D01BA001C01BB001B01BC001B01BD001A01
          BE001A01C0001A01C2001901C4001901C7001801C8001901CA001901CB001901
          CB001A01CB001B01CC001C01CB001C01CB001D01CB001E01CA001E01C9001F01
          C8001F01C7001F01C6002701C6002601C9002501CB002401CC002201CE002101
          CF001F01D0001C01D0001A01D0001701D0001401CF001301CE001201CC001101
          CA001101C8001101C5001201C2001301BF001301BD001401BB001601B9001701
          B7001A01B6001C01B5002001B5002201B5002401B5002601B6002701B7002801
          B8002901BA002901BC002801BF002101BF00040000002D010200040000002D01
          030004000000F001000007000000FC020000006F41000000040000002D010000
          040000002D0101000400000006010100D6000000380502004F0019005701CB00
          5701CB005701CC005701CD005601CD005601CE005601CF005601CF005601D000
          4F01D0005001CC005001CC004F01CD004E01CE004D01CF004C01CF004B01D000
          4A01D0004901D0004801D0004601D0004501D0004401CF004301CE004201CD00
          4201CB004201CA004301C8004301C5004501C3004601C1004801C0004B01BF00
          4D01BF005001BF005201BF005301BD005301BC005301BB005301BB005301BA00
          5201B9005201B9005101B9005001B9005001B9004F01B9004E01BA004E01BA00
          4D01BB004D01BB004D01BC004D01BD004501BD004601BC004601BB004701BA00
          4701B9004801B8004801B7004901B7004A01B6004A01B6004B01B6004C01B500
          4D01B5004E01B5004F01B5005001B5005101B5005401B5005601B5005801B600
          5901B7005A01B9005A01BA005A01BC005A01BE005701CB004A01C8004A01C800
          4A01C9004A01CA004A01CA004A01CB004A01CB004B01CC004C01CC004D01CB00
          4E01CB004F01CA005001C8005001C7005101C6005101C4005101C3005001C300
          4F01C3004E01C3004D01C4004C01C4004B01C5004A01C6004A01C80004000000
          2D010200040000002D01030004000000F001000007000000FC020000006F4100
          0000040000002D010000040000002D0101000400000006010100580000002403
          2A006701B8006701B8006801B7006901B6006A01B6006B01B5006B01B5006C01
          B5006D01B5006E01B5007001B5007101B5007201B6007301B6007301B7007401
          B8007401B9007401BA006F01D0006801D0006C01BD006C01BD006C01BC006C01
          BB006C01BA006C01BA006B01BA006B01B9006A01B9006901B9006801BA006801
          BA006701BA006701BB006601BC006601BD006601BD006201D0005B01D0006001
          B5006801B5006701B800040000002D010200040000002D01030004000000F001
          000007000000FC020000006F41000000040000002D010000040000002D010100
          0400000006010100E800000038050200500021008E01B5008801D1008801D200
          8701D3008701D5008601D6008401D8008201D9007F01DA007C01DA007A01DA00
          7801DA007601D9007501D8007401D7007301D6007301D4007301D2007A01D200
          7A01D3007A01D3007A01D3007A01D4007A01D4007A01D4007A01D5007A01D500
          7B01D5007B01D5007B01D5007B01D6007C01D6007C01D6007C01D6007D01D600
          7D01D6007E01D6007E01D5007F01D5007F01D4008001D3008001D2008001D100
          8101CC008101CC008101CD008001CE007F01CE007F01CF007E01CF007D01CF00
          7C01CF007B01CF007801CF007701CE007601CD007501CB007501C9007501C700
          7601C4007601C2007701C0007701BD007801BB007901B9007A01B7007C01B600
          7E01B5008101B5008201B5008301B5008301B5008401B6008501B6008501B700
          8601B7008601B8008601B8008701B5008E01B5007F01CB008001CB008001CA00
          8101CA008201C9008201C8008301C6008301C4008401C2008401C0008401BF00
          8401BD008501BC008401BB008401BA008301B9008301B9008201B9008101BA00
          8001BA007F01BB007F01BD007E01BE007E01C1007D01C3007D01C4007D01C600
          7C01C7007C01C8007C01C9007D01CA007E01CB007F01CB00040000002D010200
          040000002D01030004000000F001000007000000FC020000006F410000000400
          00002D010000040000002D01010004000000060101005800000024032A00A701
          B800A701B800A801B700A801B600A901B600AA01B500AB01B500AC01B500AD01
          B500AE01B500AF01B500B001B500B101B600B201B600B301B700B301B800B301
          B900B301BA00AF01D000A701D000AB01BD00AB01BD00AB01BC00AB01BB00AB01
          BA00AB01BA00AB01BA00AA01B900A901B900A801B900A801BA00A701BA00A701
          BA00A601BB00A601BC00A601BD00A601BD00A201D0009A01D000A001B500A701
          B500A701B800040000002D010200040000002D01030004000000F00100000700
          0000FC020000006F41000000040000002D010000040000002D01010004000000
          06010100E80000003805020050002100CD01B500C701D100C701D200C701D300
          C601D500C501D600C401D800C201D900BF01DA00BB01DA00B901DA00B701DA00
          B601D900B401D800B301D700B301D600B201D400B301D200BA01D200BA01D300
          BA01D300BA01D300BA01D400BA01D400BA01D400BA01D500BA01D500BA01D500
          BA01D500BA01D500BB01D600BB01D600BB01D600BC01D600BC01D600BD01D600
          BD01D600BE01D500BF01D500BF01D400BF01D300C001D200C001D100C101CC00
          C101CC00C001CD00C001CE00BF01CE00BE01CF00BD01CF00BC01CF00BB01CF00
          BB01CF00B801CF00B601CE00B501CD00B501CB00B401C900B501C700B501C400
          B601C200B601C000B701BD00B701BB00B901B900BA01B700BC01B600BE01B500
          C001B500C101B500C201B500C301B500C401B600C401B600C501B700C501B700
          C501B800C601B800C601B500CD01B500BE01CB00BF01CB00C001CA00C101CA00
          C101C900C201C800C201C600C301C400C301C200C401C000C401BF00C401BD00
          C401BC00C401BB00C401BA00C301B900C201B900C101B900C001BA00C001BA00
          BF01BB00BE01BD00BE01BE00BD01C100BD01C300BC01C400BC01C600BC01C700
          BC01C800BC01C900BC01CA00BD01CB00BE01CB00040000002D01020004000000
          2D01030004000000F001000007000000FC020000006F41000000040000002D01
          0000040000002D01010004000000060101002600000024031100D901B500E001
          B500E001C900E001C900E901B500F101B500F101C900F101C900F901B5000002
          B500F301D000EC01D000EB01BE00EB01BE00E201D000DA01D000D901B5000400
          00002D010200040000002D01030004000000F001000007000000FC020000006F
          41000000040000002D010000040000002D01010004000000060101008A000000
          3805020021002100FF01C200FF01BF000002BD000102BB000202B9000402B700
          0602B6000902B5000C02B5001002B5001202B6001402B7001502B9001502BB00
          1502BD001502BF001402C2001402C5001302C8001202CA001002CC000F02CE00
          0C02CF000A02D0000602D0000302D0000102CF00FF01CE00FE01CC00FE01CA00
          FE01C800FE01C500FF01C2000D02C2000D02C0000E02BE000E02BD000E02BC00
          0E02BB000D02BA000C02BA000B02B9000A02BA000902BA000902BB000802BC00
          0702BD000702BE000702C0000602C2000602C4000502C7000502C8000502CA00
          0502CB000602CB000702CB000702CC000802CB000902CB000A02CB000B02CA00
          0B02C8000C02C7000C02C4000D02C200040000002D010200040000002D010300
          04000000F001000007000000FC020000006F41000000040000002D0100000400
          00002D010100040000000601010034000000240318002202B5002102B9002202
          B9002202B8002302B7002402B6002502B6002602B5002702B5002802B5002902
          B5002802BB002602BB002402BC002302BC002202BD002102BE002002BF002002
          C0002002C1001D02D0001502D0001B02B5002202B500040000002D0102000400
          00002D01030004000000F001000007000000FC020000006F4100000004000000
          2D010000040000002D01010004000000060101005800000024032A003C01B500
          3B01B5003A01B5003901B5003801B5003801B6003701B6003601B7003501B800
          3501B8003801AB003101AB002901D0003001D0003401BD003401BD003401BC00
          3501BB003501BA003601BA003601BA003701B9003801B9003801B9003901BA00
          3901BA003A01BA003A01BB003A01BC003A01BD003A01BD003601D0003D01D000
          4201BA004201B9004201B8004101B7004101B6004001B6003F01B5003E01B500
          3C01B500040000002D010200040000002D01030004000000F001000007000000
          FC020000006F41000000040000002D010000040000002D010100040000000601
          01000E000000240305002F02AB002702D0002E02D0003602AB002F02AB000400
          00002D010200040000002D01030004000000F001000007000000FC020000006F
          41000000040000002D010000040000002D010100040000000601010098000000
          38050200280021004702AB004502B8004502B8004402B7004402B6004302B600
          4302B5004202B5004102B5004002B5003F02B5003D02B5003B02B6003902B800
          3802B9003702BC003602BE003502C0003502C2003502C4003402C7003402C900
          3402CB003402CD003502CF003702D0003902D0003A02D0003B02D0003C02D000
          3D02D0003E02CF003F02CE004002CE004002CD004102CD004002D0004702D000
          4F02AB004702AB004202C2004202C5004102C7004102C8004002CA004002CB00
          3F02CB003E02CC003D02CC003D02CC003C02CB003C02CB003B02CA003B02C800
          3B02C7003C02C5003C02C2003D02C0003D02BF003E02BD003E02BC003F02BB00
          3F02BA004002B9004102B9004202B9004302BA004302BB004302BC004302BD00
          4302BF004302C0004202C200040000002D010200040000002D01030004000000
          F001000007000000FC020000006F41000000040000002D010000040000002D01
          010004000000060101003E00000024031D002B0035002B003500310039003600
          3C003C003E0042003F0047003E004C003D0051003B00560039005A0036006000
          320068002D00710027007A00210083001B008C00150094000F00940002000200
          020002002500050024000A0024000E00250013002600180028001E002B002400
          30002B003500040000002D010200040000002D01030004000000F00100000700
          0000FC020000006F41000000040000002D010000040000002D01010004000000
          06010100500000002403260062006E0050005D004F005D004F005C004E005B00
          4D005B004C005A004C005A004C0059004B00590046005600410054003C005300
          3800520034005300300053002D0054002A0055002A0055002900550029005500
          280056002700560027005600260057002600570002006F0002009A0094009A00
          94007B0092007C008F007E008A007F0084007F007D007E0075007B006B007600
          62006E00040000002D010200040000002D01030004000000F001000007000000
          FC020000006F41000000040000002D010000040000002D010100040000000601
          01003C00000024031C0029003900290039002900380028003800280038002800
          3700270037002700370027003700200033001A00300014002F000F002F000B00
          2F00070030000400310002003200020041000A003B000B003A000D0039001000
          380013003700180037001E003700240038002C003B0029003900040000002D01
          0200040000002D01030004000000F001000007000000FC020000006F41000000
          040000002D010000040000002D01010004000000060101005200000024032700
          3D004C003D004C003D004C003D004B003C004B003C004B003C004B003B004A00
          3B004A0035004600300043002B00410026004100210041001D0041001A004200
          1700430016004300160043001500440014004400140044001300450013004500
          12004500110046001100460002005000020060001D004D001E004D0020004C00
          23004A00260049002B0049003100490037004A003E004D003D004C0004000000
          2D010200040000002D01030004000000F001000007000000FC020000006F4100
          0000040000002D010000040000002D01010004000000060101005A0000002403
          2B0094005C0092005E0090005F008E0061008C0062008A006300880064008700
          65008600660084006700810069007D006B0079006C0074006D006E006C006800
          6B006100680063006A0064006B0064006B0064006B0065006C0065006C006600
          6C0066006D0066006D006C00710071007300770074007C007500810074008600
          73008B00710090006F0090006E0091006E0091006D0092006D0092006D009300
          6C0094006C0094006C0094005C00040000002D010200040000002D0103000400
          0000F001000007000000FC020000006F41000000040000002D01000004000000
          2D01010004000000060101005E00000024032D0094003D008F0041008A004400
          8500480080004B007C004E00780050007500520073005300710055006E005700
          6A00580066005A0061005A005C005A00550059004E0056005000580051005900
          5100590051005900510059005100590051005900510059005100590051005900
          5100590057005D005D00600063006200680062006E0062007300610078005F00
          7D005C007F005B008200590085005700880055008B0053008E00510091004F00
          94004D0094003D00040000002D010200040000002D01030004000000F0010000
          07000000FC020000006F41000000040000002D010000040000002D0101000400
          0000060101005A00000024032B0094001F008D002400850029007D002E007500
          34006E00380067003D0063004000600041005E0043005B004400570046005300
          48004E00480049004800420047003B0044003E0047003E0047003F0048004000
          4800400049004100490042004A0042004A0043004B0048004D004D004F005200
          5000570050005C00500061004F0065004D006A004A006D004800720045007700
          41007D003E0083003A00890036008F00320094002E0094001F00040000002D01
          0200040000002D01030004000000F0010000030000000000}
      end
      object lblSupport: TLabel
        Left = 7
        Top = 127
        Width = 130
        Height = 19
        Caption = 'Technical support: '
      end
      object aslMail: TASLink
        Left = 144
        Top = 127
        Width = 129
        Height = 20
        Cursor = crHandPoint
        Hint = 'Click here to send a message'
        Transparent = True
        Caption = 'h2osoft@usgs.gov'
        ParentShowHint = False
        ShowHint = True
      end
      object aslRbwinst: TASLink
        Left = 144
        Top = 148
        Width = 126
        Height = 20
        Cursor = crHandPoint
        Hint = 'Click here to send a message'
        Transparent = True
        Caption = 'rbwinst@usgs.gov'
        ParentShowHint = False
        ShowHint = True
      end
      object aslMfGUI: TASLink
        Left = 7
        Top = 166
        Width = 388
        Height = 20
        Cursor = crHandPoint
        Hint = 'Click here to go to the web site'
        Transparent = True
        Caption = 'http://water.usgs.gov/nrp/gwsoftware/Utility/Utility.html'
        ParentShowHint = False
        ShowHint = True
        URLTypeAdd = False
        URLType = utHttp
      end
      object lblArgus: TLabel
        Left = 7
        Top = 192
        Width = 208
        Height = 19
        Caption = 'Argus ONE technical support: '
      end
      object aslArgusemail: TASLink
        Left = 220
        Top = 192
        Width = 157
        Height = 20
        Cursor = crHandPoint
        Hint = 'Click here to send a message'
        Transparent = True
        Caption = 'support@argusint.com'
        ParentShowHint = False
        ShowHint = True
      end
      object aslArgusWeb: TASLink
        Left = 7
        Top = 213
        Width = 174
        Height = 20
        Cursor = crHandPoint
        Hint = 'Click here to go to the web site'
        Transparent = True
        Caption = 'http://www.argusint.com/'
        ParentShowHint = False
        ShowHint = True
        URLTypeAdd = False
        URLType = utHttp
      end
      object lblTel: TLabel
        Left = 274
        Top = 148
        Width = 122
        Height = 19
        Caption = '(703) - 648-5988'
      end
      object lblFileVersionCaption: TLabel
        Left = 7
        Top = 110
        Width = 94
        Height = 19
        Caption = 'File Version: '
      end
      object lblVersion: TLabel
        Left = 112
        Top = 110
        Width = 72
        Height = 19
        Hint = 'This is the version of the MODFLOW GUI that you are running'
        Caption = 'lblVersion'
        ParentShowHint = False
        ShowHint = True
      end
      object Memo1: TMemo
        Left = 8
        Top = 240
        Width = 609
        Height = 177
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object odRead: TOpenDialog
    Filter = 'Text files (*.txt)|*.txt|All Files|*.*'
    Left = 32
    Top = 40
  end
end
