.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;
.super Ljava/lang/Enum;
.source "SubtitleObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

.field public static final enum COPYRIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

.field public static final enum DESCRIPTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

.field public static final enum FRAME_RATE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

.field public static final enum TITLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->TITLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .line 20
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    const-string v1, "DESCRIPTION"

    invoke-direct {v0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->DESCRIPTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .line 21
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    const-string v1, "COPYRIGHT"

    invoke-direct {v0, v1, v4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->COPYRIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .line 22
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    const-string v1, "FRAME_RATE"

    invoke-direct {v0, v1, v5}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->FRAME_RATE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->TITLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->DESCRIPTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->COPYRIGHT:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->FRAME_RATE:Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    return-object v0
.end method
