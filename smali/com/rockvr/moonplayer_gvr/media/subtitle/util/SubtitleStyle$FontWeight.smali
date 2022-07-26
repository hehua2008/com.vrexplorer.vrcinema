.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;
.super Ljava/lang/Enum;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontWeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

.field public static final enum BOLD:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

.field public static final enum NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    .line 61
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->BOLD:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->BOLD:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;

    return-object v0
.end method
