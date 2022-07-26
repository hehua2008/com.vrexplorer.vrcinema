.class final Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

.field private mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0
    .param p1, "textureView"    # Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "surfaceTextureHost"    # Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    .line 171
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 172
    iput-object p3, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 173
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 180
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    instance-of v2, p1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 182
    check-cast v1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    .line 183
    .local v1, "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-static {v2}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->access$100(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    .line 185
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 186
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-virtual {v2, v0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 190
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-static {v2}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;->access$100(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    goto :goto_0

    .line 193
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v1    # "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    :cond_2
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public getRenderView()Lcom/rockvr/moonplayer_gvr/media/IRenderView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method
