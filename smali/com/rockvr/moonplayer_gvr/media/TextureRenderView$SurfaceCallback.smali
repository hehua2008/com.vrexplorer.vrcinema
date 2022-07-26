.class final Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTexture:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;)V
    .locals 2
    .param p1, "renderView"    # Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 247
    iput-boolean v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 248
    iput-boolean v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 251
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 262
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 266
    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 268
    .restart local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;II)V

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 272
    if-nez v0, :cond_2

    .line 273
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 274
    .restart local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;III)V

    .line 276
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 378
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 284
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 286
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 287
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 289
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 290
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .line 291
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 293
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 310
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 311
    iput-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 312
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 313
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 315
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 316
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .line 317
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 320
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    const-string v2, "TextureRenderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 297
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 299
    iput p2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 300
    iput p3, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 302
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 303
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;

    .line 304
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 306
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 326
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 334
    if-nez p1, :cond_0

    .line 335
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 338
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_2

    .line 341
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 344
    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_3
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 348
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 350
    :cond_4
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_5

    .line 351
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0, v2}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 355
    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_6
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 359
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 361
    :cond_7
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_8

    .line 362
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0, v2}, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 365
    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 279
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 259
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 373
    return-void
.end method
