.class final Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsFormatChanged:Z

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

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWeakSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;)V
    .locals 1
    .param p1, "surfaceView"    # Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    .line 223
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 230
    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 232
    .restart local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;II)V

    .line 235
    :cond_1
    iget-boolean v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 236
    if-nez v0, :cond_2

    .line 237
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 238
    .restart local v0    # "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    :cond_2
    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    iget v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;III)V

    .line 240
    :cond_3
    return-void
.end method

.method public removeRenderCallback(Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 277
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 278
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 279
    iput p2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 280
    iput p3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 281
    iput p4, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 285
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 286
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 287
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 289
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 248
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 249
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 250
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 251
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 252
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 254
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 255
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 256
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 258
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 263
    iput-boolean v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 264
    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 265
    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 266
    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 268
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 269
    .local v1, "surfaceHolder":Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 270
    .local v0, "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 272
    .end local v0    # "renderCallback":Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method
