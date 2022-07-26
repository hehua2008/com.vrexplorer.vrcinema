.class public Lcom/EasyMovieTexture/TrackItem;
.super Ljava/lang/Object;
.source "TrackItem.java"


# instance fields
.field public final index:I

.field public final infoInline:Ljava/lang/String;

.field public final trackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;


# direct methods
.method public constructor <init>(ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "trackInfo"    # Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/EasyMovieTexture/TrackItem;->index:I

    .line 17
    iput-object p2, p0, Lcom/EasyMovieTexture/TrackItem;->trackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    .line 18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "# %d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/EasyMovieTexture/TrackItem;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/EasyMovieTexture/TrackItem;->trackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getInfoInline()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/EasyMovieTexture/TrackItem;->infoInline:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/EasyMovieTexture/TrackItem;->index:I

    return v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/EasyMovieTexture/TrackItem;->infoInline:Ljava/lang/String;

    return-object v0
.end method
