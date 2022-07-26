.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;
.super Ljava/lang/Enum;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum COLOR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum DIRECTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum FONT_STYLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum FONT_WEIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum TEXT_ALIGN:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

.field public static final enum TEXT_DECORATION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "DIRECTION"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->DIRECTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 23
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "TEXT_ALIGN"

    invoke-direct {v0, v1, v4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_ALIGN:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 24
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v5}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->COLOR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 25
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "FONT_STYLE"

    invoke-direct {v0, v1, v6}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_STYLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 26
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "FONT_WEIGHT"

    invoke-direct {v0, v1, v7}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_WEIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 27
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    const-string v1, "TEXT_DECORATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_DECORATION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->DIRECTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_ALIGN:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->COLOR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_STYLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_WEIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_DECORATION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    return-object v0
.end method
