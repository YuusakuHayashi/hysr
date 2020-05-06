Attribute VB_Name = "statistics"


Public Function GEOM(ByRef percent As Single, ByRef x As Long) As Single
    If x >= 1 Then
        GEOM = percent * ((1 - percent) ^ (x - 1))
    End If
End Function

Public Function NBINOM_DIST(ByRef x%, ByRef r%, ByRef p!)
    If x >= 1 Then
        NBINOM_DIST = combination(r% + x% - 1, x%) * p! ^ r% * (1 - p!) ^ x%
    End If
End Function

Private Function combination(ByRef n%, ByRef k%) As Long
    '‘g‚İ‡‚í‚¹

    'ˆÊ”n
    '”ñ•‰®”k
    combination = permutation(n%, k%) / factorial(k%)
End Function

Private Function permutation(ByRef n%, ByRef k%) As Long
    '‡—ñ

    'ˆÊ”n
    '”ñ•‰®”k
    Dim f&: f& = factorial(n%)

    Dim f2&: f2& = 1
    Dim i%: i% = 0
    For i% = 1 To (n% - k%)
        f2& = f2& * i%
    Next
    permutation = factorial(n%) / f2&
End Function

Private Function factorial(ByRef n%) As Long
    'ŠKæ

    'ˆÊ”n
    factorial = 1
    Dim i%: i% = 0
    For i% = 1 To n%
        factorial = factorial * i%
    Next
End Function
