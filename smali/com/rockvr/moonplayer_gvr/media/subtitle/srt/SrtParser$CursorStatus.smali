.class final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;
.super Ljava/lang/Enum;
.source "SrtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CursorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

.field public static final enum CUE_ID:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

.field public static final enum CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

.field public static final enum CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

.field public static final enum NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 34
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    const-string v1, "CUE_ID"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_ID:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 35
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    const-string v1, "CUE_TIMECODE"

    invoke-direct {v0, v1, v4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 36
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    const-string v1, "CUE_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_ID:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    return-object v0
.end method
