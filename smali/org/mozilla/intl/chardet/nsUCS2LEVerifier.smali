.class public Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;
.source "nsUCS2LEVerifier.java"


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    .line 59
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    .line 61
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    aput v3, v0, v3

    .line 62
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const v1, 0x200100

    aput v1, v0, v5

    .line 63
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    aput v3, v0, v6

    .line 64
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x3000

    aput v1, v0, v7

    .line 65
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 66
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/4 v1, 0x5

    const v2, 0x333330

    aput v2, v0, v1

    .line 67
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    aput v3, v0, v4

    .line 68
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 69
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 70
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 71
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 72
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 73
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 74
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 75
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 76
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 77
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v3, v0, v1

    .line 78
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 79
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    .line 80
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 81
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x14

    aput v3, v0, v1

    .line 82
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 83
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 84
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 85
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 86
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 87
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    .line 88
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    .line 89
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    .line 90
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v3, v0, v1

    .line 91
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v3, v0, v1

    .line 92
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    const/16 v1, 0x1f

    const/high16 v2, 0x54000000

    aput v2, v0, v1

    .line 96
    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    .line 98
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const v1, 0x11346766

    aput v1, v0, v3

    .line 99
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const v1, 0x22221111

    aput v1, v0, v5

    .line 100
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const v1, 0x12155522

    aput v1, v0, v6

    .line 101
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const v1, 0x66151555

    aput v1, v0, v7

    .line 102
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x15558867

    aput v2, v0, v1

    .line 103
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x55111555

    aput v2, v0, v1

    .line 104
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    const v1, 0x151555

    aput v1, v0, v4

    .line 108
    const-string v0, "UTF-16LE"

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->charset:Ljava/lang/String;

    .line 109
    sput v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->stFactor:I

    .line 111
    return-void
.end method


# virtual methods
.method public cclass()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->cclass:[I

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public isUCS2()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public stFactor()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->stFactor:I

    return v0
.end method

.method public states()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;->states:[I

    return-object v0
.end method
