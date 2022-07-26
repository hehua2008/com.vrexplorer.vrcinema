.class public Lcom/EasyMovieTexture/EasyMovieTexture;
.super Ljava/lang/Object;
.source "EasyMovieTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;
    }
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static mObjCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/EasyMovieTexture/EasyMovieTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBRockchip:Z

.field private mBSplitOBB:Z

.field public mBUpdateFrame:Z

.field private mCurrentSeekPercent:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mICurrentSeekPosition:I

.field private mIErrorCode:I

.field private mIErrorCodeExtra:I

.field public mINativeMgrID:I

.field private mISurfaceTextureID:I

.field private mIUnityTextureID:I

.field private mInfoCode:I

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mStrFileName:Ljava/lang/String;

.field private mStrOBBName:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUnityActivity:Landroid/app/Activity;

.field private mUri:Landroid/net/Uri;

.field m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    .line 118
    const-string v0, "BlueDoveMediaRender"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUnityActivity:Landroid/app/Activity;

    .line 31
    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 34
    iput v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIUnityTextureID:I

    .line 37
    iput v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    .line 40
    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 44
    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    .line 47
    iput v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mCurrentSeekPercent:I

    .line 50
    iput v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mICurrentSeekPosition:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBRockchip:Z

    .line 70
    iput-boolean v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBSplitOBB:Z

    .line 77
    iput-boolean v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBUpdateFrame:Z

    .line 121
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    return-void
.end method

.method public static GetObject(I)Lcom/EasyMovieTexture/EasyMovieTexture;
    .locals 2
    .param p0, "iID"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 88
    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/EasyMovieTexture/EasyMovieTexture;

    iget v1, v1, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    if-ne v1, p0, :cond_0

    .line 89
    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/EasyMovieTexture/EasyMovieTexture;

    .line 92
    :goto_1
    return-object v1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 10
    .param p1, "playerType"    # I

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x4

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 232
    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const-string v2, "mediacodec-all-videos"

    invoke-virtual {v0, v3, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 233
    const-string v2, "opensles"

    invoke-virtual {v0, v3, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 234
    const-string v2, "overlay-format"

    const-wide/32 v4, 0x32335652

    invoke-virtual {v0, v3, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 235
    const-string v2, "framedrop"

    invoke-virtual {v0, v3, v2, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 236
    const-string v2, "start-on-prepared"

    invoke-virtual {v0, v3, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 237
    const/4 v2, 0x1

    const-string v3, "http-detect-range-support"

    invoke-virtual {v0, v2, v3, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 238
    const/4 v2, 0x2

    const-string v3, "skip_loop_filter"

    const-wide/16 v4, 0x30

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 239
    move-object v1, v0

    .line 244
    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .local v1, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :goto_0
    return-object v1

    .line 225
    .end local v1    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :pswitch_0
    new-instance v1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 227
    .restart local v1    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 128
    iget v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    if-eq v1, v2, :cond_0

    .line 129
    new-array v0, v4, [I

    .line 130
    .local v0, "textures":[I
    iget v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    aput v1, v0, v3

    .line 131
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 132
    iput v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    .line 135
    .end local v0    # "textures":[I
    :cond_0
    iget v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v1}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 136
    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->QuitApplication()V

    .line 138
    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public GetCurrentPosition()I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public GetCurrentSeekPercent()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mCurrentSeekPercent:I

    return v0
.end method

.method public GetDuration()I
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public GetError()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIErrorCode:I

    return v0
.end method

.method public GetErrorExtra()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIErrorCodeExtra:I

    return v0
.end method

.method public GetInfo()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mInfoCode:I

    return v0
.end method

.method public native GetManagerID()I
.end method

.method public GetSeekPosition()I
    .locals 4

    .prologue
    .line 397
    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mICurrentSeekPosition:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :cond_0
    :goto_0
    iget v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mICurrentSeekPosition:I

    return v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetStatus()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    invoke-virtual {v0}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->GetValue()I

    move-result v0

    return v0
.end method

.method public GetVideoHeight()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetVideoWidth()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native InitApplication()I
.end method

.method public native InitExtTexture()I
.end method

.method public InitJniManager()V
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 521
    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->InitApplication()I

    .line 522
    return-void
.end method

.method public native InitNDK(Ljava/lang/Object;)I
.end method

.method public InitNative(Lcom/EasyMovieTexture/EasyMovieTexture;)I
    .locals 1
    .param p1, "obj"    # Lcom/EasyMovieTexture/EasyMovieTexture;

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 503
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/EasyMovieTexture/EasyMovieTexture;->InitNDK(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    .line 505
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture;->mObjCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    return v0
.end method

.method public IsUpdateFrame()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBUpdateFrame:Z

    return v0
.end method

.method public Load()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->UnLoad()V

    .line 189
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 191
    invoke-static {}, Lcom/EasyMovieTexture/Settings;->getPlayer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 193
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBUpdateFrame:Z

    .line 197
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mStrFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUri:Landroid/net/Uri;

    .line 199
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUnityActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 201
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->InitExtTexture()I

    move-result v0

    iput v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    .line 205
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 206
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 207
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    .line 209
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 210
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 211
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 212
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 213
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 215
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public NDK_SetFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mStrFileName:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public Pause()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 457
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 460
    :cond_0
    return-void
.end method

.method public Play(I)V
    .locals 2
    .param p1, "iSeek"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->END:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-ne v0, v1, :cond_1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 421
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 424
    :cond_1
    return-void
.end method

.method public native QuitApplication()V
.end method

.method public RePlay()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 448
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 451
    :cond_0
    return-void
.end method

.method public native RenderScene([FII)V
.end method

.method public Reset()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 432
    :cond_0
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 433
    return-void
.end method

.method public native SetAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method public SetLooping(Z)V
    .locals 1
    .param p1, "bLoop"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method public native SetManagerID(I)V
.end method

.method public SetNotReady()V
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 530
    return-void
.end method

.method public SetRockchip(Z)V
    .locals 0
    .param p1, "bValue"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBRockchip:Z

    .line 377
    return-void
.end method

.method public SetSeekPosition(I)V
    .locals 4
    .param p1, "iSeek"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 394
    :cond_0
    return-void
.end method

.method public SetSplitOBB(ZLjava/lang/String;)V
    .locals 0
    .param p1, "bValue"    # Z
    .param p2, "strOBBName"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBSplitOBB:Z

    .line 491
    iput-object p2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mStrOBBName:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public SetUnityActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "unityActivity"    # Landroid/app/Activity;

    .prologue
    .line 510
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 511
    iput-object p1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUnityActivity:Landroid/app/Activity;

    .line 512
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mUnityActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetAssetManager(Landroid/content/res/AssetManager;)V

    .line 513
    return-void
.end method

.method public SetUnityTexture(I)V
    .locals 1
    .param p1, "iTextureID"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIUnityTextureID:I

    .line 482
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 483
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIUnityTextureID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetUnityTextureID(I)V

    .line 484
    return-void
.end method

.method public native SetUnityTextureID(I)V
.end method

.method public SetUnityTextureID(Ljava/lang/Object;)V
    .locals 0
    .param p1, "texturePtr"    # Ljava/lang/Object;

    .prologue
    .line 487
    return-void
.end method

.method public SetVolume(F)V
    .locals 1
    .param p1, "fVolume"    # F

    .prologue
    .line 385
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 388
    :cond_0
    return-void
.end method

.method public SetWindowSize()V
    .locals 4

    .prologue
    .line 533
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 534
    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->GetVideoWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/EasyMovieTexture/EasyMovieTexture;->GetVideoHeight()I

    move-result v1

    iget v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIUnityTextureID:I

    iget-boolean v3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBRockchip:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetWindowSize(IIIZ)V

    .line 535
    return-void
.end method

.method public native SetWindowSize(IIIZ)V
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 441
    :cond_0
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 442
    return-void
.end method

.method public UnLoad()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 143
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v3, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    if-eq v2, v3, :cond_3

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 147
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :goto_0
    iput-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 168
    iput-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurface:Landroid/view/Surface;

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 173
    iput-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 176
    :cond_1
    iget v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    if-eq v2, v5, :cond_2

    .line 177
    new-array v1, v7, [I

    .line 178
    .local v1, "textures":[I
    iget v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    aput v2, v1, v6

    .line 179
    invoke-static {v7, v1, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 180
    iput v5, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    .line 183
    .end local v1    # "textures":[I
    :cond_2
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 163
    :goto_2
    iput-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    goto :goto_1

    .line 158
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 160
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method public UpdateVideoTexture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xb71

    .line 347
    iget-boolean v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBUpdateFrame:Z

    if-nez v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 352
    iget v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v2}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 354
    const/4 v2, 0x1

    new-array v0, v2, [Z

    .line 355
    .local v0, "abValue":[Z
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGetBooleanv(I[ZI)V

    .line 356
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 358
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 360
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 362
    .local v1, "mMat":[F
    iget-object v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 364
    iget v2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mISurfaceTextureID:I

    iget v3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIUnityTextureID:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/EasyMovieTexture/EasyMovieTexture;->RenderScene([FII)V

    .line 366
    aget-boolean v2, v0, v5

    if-eqz v2, :cond_0

    .line 367
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/EasyMovieTexture/MediaPlayerCompat;->deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 332
    return-void
.end method

.method public getAudioSelectedTrack()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getAudioTrackInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/EasyMovieTexture/TrackItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v4, :cond_1

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    :cond_0
    return-object v3

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    .line 287
    .local v2, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v3, "trackItems":Ljava/util/List;, "Ljava/util/List<Lcom/EasyMovieTexture/TrackItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 289
    aget-object v1, v2, v0

    .line 290
    .local v1, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 291
    new-instance v4, Lcom/EasyMovieTexture/TrackItem;

    aget-object v5, v2, v0

    invoke-direct {v4, v0, v5}, Lcom/EasyMovieTexture/TrackItem;-><init>(ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/EasyMovieTexture/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v0

    return v0
.end method

.method public getSubtitleSelectedTrack()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getSubtitleTrackInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/EasyMovieTexture/TrackItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v4, :cond_1

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :cond_0
    return-object v3

    .line 302
    :cond_1
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    .line 304
    .local v2, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v3, "trackItems":Ljava/util/List;, "Ljava/util/List<Lcom/EasyMovieTexture/TrackItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 306
    aget-object v1, v2, v0

    .line 307
    .local v1, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 308
    new-instance v4, Lcom/EasyMovieTexture/TrackItem;

    aget-object v5, v2, v0

    invoke-direct {v4, v0, v5}, Lcom/EasyMovieTexture/TrackItem;-><init>(ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/EasyMovieTexture/TrackItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v3, :cond_1

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :cond_0
    return-object v2

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v1

    .line 254
    .local v1, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, "trackItems":Ljava/util/List;, "Ljava/util/List<Lcom/EasyMovieTexture/TrackItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 256
    new-instance v3, Lcom/EasyMovieTexture/TrackItem;

    aget-object v4, v1, v0

    invoke-direct {v3, v0, v4}, Lcom/EasyMovieTexture/TrackItem;-><init>(ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getVideoSelectedTrack()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getVideoTrackInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/EasyMovieTexture/TrackItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v4, :cond_1

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    :cond_0
    return-object v3

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    .line 270
    .local v2, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v3, "trackItems":Ljava/util/List;, "Ljava/util/List<Lcom/EasyMovieTexture/TrackItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 272
    aget-object v1, v2, v0

    .line 273
    .local v1, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 274
    new-instance v4, Lcom/EasyMovieTexture/TrackItem;

    aget-object v5, v2, v0

    invoke-direct {v4, v0, v5}, Lcom/EasyMovieTexture/TrackItem;-><init>(ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 584
    iput p2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mCurrentSeekPercent:I

    .line 585
    :cond_0
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 577
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->END:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 579
    :cond_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 551
    iget-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-ne p1, v1, :cond_0

    .line 553
    sparse-switch p2, :sswitch_data_0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "strError":Ljava/lang/String;
    :goto_0
    iput p2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIErrorCode:I

    .line 567
    iput p3, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mIErrorCodeExtra:I

    .line 568
    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->ERROR:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v1, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 569
    const/4 v1, 0x1

    .line 571
    .end local v0    # "strError":Ljava/lang/String;
    :goto_1
    return v1

    .line 555
    :sswitch_0
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    .line 556
    .restart local v0    # "strError":Ljava/lang/String;
    goto :goto_0

    .line 558
    .end local v0    # "strError":Ljava/lang/String;
    :sswitch_1
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    .line 559
    .restart local v0    # "strError":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v0    # "strError":Ljava/lang/String;
    :sswitch_2
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    .line 562
    .restart local v0    # "strError":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "strError":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 553
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mBUpdateFrame:Z

    .line 341
    return-void
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 600
    iput p2, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mInfoCode:I

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 591
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    iput-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->m_iCurrentState:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 592
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mINativeMgrID:I

    invoke-virtual {p0, v0}, Lcom/EasyMovieTexture/EasyMovieTexture;->SetManagerID(I)V

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mCurrentSeekPercent:I

    .line 594
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 596
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Lcom/EasyMovieTexture/MediaPlayerCompat;->selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 328
    return-void
.end method
