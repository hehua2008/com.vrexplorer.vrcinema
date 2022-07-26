.class public final enum Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
.super Ljava/lang/Enum;
.source "SubtitlesFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

.field public static final enum AdvancedSSAFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

.field public static final enum SrtFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

.field public static final enum SubStaionAlphaFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;


# instance fields
.field private extension:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    const-string v1, "SrtFormat"

    const-string v2, "SubRip"

    const-string v3, ".srt"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SrtFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    .line 6
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    const-string v1, "SubStaionAlphaFormat"

    const-string v2, "SubStationAlpha"

    const-string v3, ".ssa"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SubStaionAlphaFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    .line 7
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    const-string v1, "AdvancedSSAFormat"

    const-string v2, "AdvancedSSA"

    const-string v3, ".ass"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->AdvancedSSAFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SrtFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SubStaionAlphaFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->AdvancedSSAFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->name:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->extension:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    return-object v0
.end method

.method public static values()[Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->$VALUES:[Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    invoke-virtual {v0}, [Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->name:Ljava/lang/String;

    return-object v0
.end method
