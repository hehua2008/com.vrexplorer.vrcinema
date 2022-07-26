.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;
.super Ljava/lang/Enum;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

.field public static final enum CENTER:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

.field public static final enum LEFT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

.field public static final enum RIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->LEFT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    .line 47
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->RIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    .line 48
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->CENTER:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->LEFT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->RIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->CENTER:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    return-object v0
.end method
