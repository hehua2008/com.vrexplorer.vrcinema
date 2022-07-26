.class public Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;
.super Ljava/lang/Object;
.source "VideoRenderType.java"


# static fields
.field private static final INT_HEMISPHERE:I = 0x6

.field private static final INT_HEMISPHERE_OU:I = 0x8

.field private static final INT_HEMISPHERE_SBS:I = 0x7

.field private static final INT_MONO:I = 0x5

.field private static final INT_PANORAMIC:I = 0x0

.field private static final INT_PANORAMIC_SBS:I = 0x3

.field private static final INT_PANORAMIC_STEREO_OU:I = 0x4

.field private static final INT_STEREO_OU:I = 0x2

.field private static final INT_STEREO_SBS:I = 0x1

.field public static MONO:Ljava/lang/String;

.field public static ONE_EIGHTY:Ljava/lang/String;

.field public static ONE_EIGHTY_STEREO_OU:Ljava/lang/String;

.field public static ONE_EIGHTY_STEREO_SBS:Ljava/lang/String;

.field public static PANORAMIC:Ljava/lang/String;

.field public static PANORAMIC_STEREO_OU:Ljava/lang/String;

.field public static PANORAMIC_STEREO_SBS:Ljava/lang/String;

.field public static STEREO_OU:Ljava/lang/String;

.field public static STEREO_SBS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "mono"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->MONO:Ljava/lang/String;

    .line 10
    const-string v0, "stereo_sbs"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_SBS:Ljava/lang/String;

    .line 11
    const-string v0, "stereo_ou"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_OU:Ljava/lang/String;

    .line 13
    const-string v0, "panoramic"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC:Ljava/lang/String;

    .line 14
    const-string v0, "panoramic_stereo_ou"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_OU:Ljava/lang/String;

    .line 15
    const-string v0, "panoramic_stereo_sbs"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_SBS:Ljava/lang/String;

    .line 17
    const-string v0, "one_eighty"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY:Ljava/lang/String;

    .line 18
    const-string v0, "one_eighty_stereo_sbs"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_SBS:Ljava/lang/String;

    .line 19
    const-string v0, "one_eighty_stereo_ou"

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_OU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsValidValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->MONO:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_SBS:Ljava/lang/String;

    .line 23
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC:Ljava/lang/String;

    .line 24
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_OU:Ljava/lang/String;

    .line 25
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY:Ljava/lang/String;

    .line 26
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_SBS:Ljava/lang/String;

    .line 27
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_OU:Ljava/lang/String;

    .line 28
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_SBS:Ljava/lang/String;

    .line 29
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_OU:Ljava/lang/String;

    .line 30
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transformRenderType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 64
    const-string v0, ""

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_SBS:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->STEREO_OU:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_3
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_SBS:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_4
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->PANORAMIC_STEREO_OU:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_5
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->MONO:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_6
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_SBS:Ljava/lang/String;

    goto :goto_0

    .line 62
    :pswitch_8
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/VideoRenderType;->ONE_EIGHTY_STEREO_OU:Ljava/lang/String;

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
