.class public Lcom/google/vr/cardboard/PhoneParams;
.super Ljava/lang/Object;
.source "PhoneParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/PhoneParams$PpiOverride;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PPI_OVERRIDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v5, 0xd9

    const/16 v13, 0x245

    const/16 v12, 0x244

    const/16 v11, 0x21d

    const/4 v2, 0x0

    .line 18
    const-class v0, Lcom/google/vr/cardboard/PhoneParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    .line 53
    const/16 v0, 0x16

    new-array v10, v0, [Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "Micromax"

    const-string v3, "4560MMX"

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v0, 0x1

    new-instance v3, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v4, "HTC"

    const-string v5, "endeavoru"

    const-string v6, "HTC One X"

    const/16 v8, 0x138

    const/16 v9, 0x138

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v10, v0

    const/4 v7, 0x2

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G920P"

    const/16 v5, 0x23f

    const/16 v6, 0x23f

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G9300"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930A"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930F"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930P"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x8

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930R4"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x9

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930T"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xa

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930V"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xb

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-G930W8"

    move-object v4, v2

    move v5, v13

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xc

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915FY"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xd

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915A"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915T"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0xf

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915K"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x10

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915T"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x11

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915G"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x12

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "samsung"

    const-string v3, "SM-N915D"

    move-object v4, v2

    move v5, v11

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x13

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "BLU"

    const-string v2, "BLU"

    const-string v3, "Studio 5.0 HD LTE"

    const-string v4, "qcom"

    const/16 v5, 0x126

    const/16 v6, 0x126

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x14

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "OnePlus"

    const-string v2, "A0001"

    const-string v3, "A0001"

    const-string v4, "bacon"

    const/16 v5, 0x191

    const/16 v6, 0x191

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    const/16 v7, 0x15

    new-instance v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    const-string v1, "THL"

    const-string v2, "THL"

    const-string v3, "thl 5000"

    const-string v4, "mt6592"

    const/16 v5, 0x1b9

    const/16 v6, 0x1b9

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v10, v7

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 6

    .prologue
    .line 141
    new-instance v5, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    invoke-direct {v5}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;-><init>()V

    .line 142
    sget-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;

    .line 100
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    sget-object v3, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    const-string v4, "Found override: {MANUFACTURER=%s, DEVICE=%s, MODEL=%s, HARDWARE=%s} : x_ppi=%d, y_ppi=%d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->manufacturer:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v2, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->device:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v2, 0x2

    iget-object v6, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->model:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->hardware:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    iget v6, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->xPpi:I

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    iget v6, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->yPpi:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 101
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v2, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->xPpi:I

    int-to-float v2, v2

    invoke-virtual {p5, v2}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->setXPpi(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .line 107
    iget v0, v0, Lcom/google/vr/cardboard/PhoneParams$PpiOverride;->yPpi:I

    int-to-float v0, v0

    invoke-virtual {p5, v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->setYPpi(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move v0, v1

    .line 111
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static registerOverrides()V
    .locals 5

    .prologue
    .line 132
    sget-object v0, Lcom/google/vr/cardboard/PhoneParams;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/vr/cardboard/PhoneParams;->registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method static registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/cardboard/PhoneParams$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readPhoneParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v6

    .line 118
    if-nez v6, :cond_1

    .line 119
    new-instance v5, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    invoke-direct {v5}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;-><init>()V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 120
    invoke-static/range {v0 .. v5}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/vr/cardboard/PhoneParams;->TAG:Ljava/lang/String;

    const-string v1, "Applying phone param override."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v5}, Lcom/google/vr/cardboard/ConfigUtils;->writePhoneParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z

    .line 125
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v6}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v5

    goto :goto_0
.end method
