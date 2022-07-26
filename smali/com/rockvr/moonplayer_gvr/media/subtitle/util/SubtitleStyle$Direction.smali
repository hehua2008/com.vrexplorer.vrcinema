.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;
.super Ljava/lang/Enum;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

.field public static final enum LTR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

.field public static final enum RTL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    const-string v1, "LTR"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->LTR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    .line 33
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    const-string v1, "RTL"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->RTL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->LTR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->RTL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    return-object v0
.end method
