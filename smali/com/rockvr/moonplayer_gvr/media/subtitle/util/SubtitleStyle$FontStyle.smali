.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;
.super Ljava/lang/Enum;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

.field public static final enum ITALIC:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

.field public static final enum NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

.field public static final enum OBLIQUE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    .line 54
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    const-string v1, "ITALIC"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->ITALIC:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    .line 55
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    const-string v1, "OBLIQUE"

    invoke-direct {v0, v1, v4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->OBLIQUE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->NORMAL:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->ITALIC:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->OBLIQUE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    return-object v0
.end method
