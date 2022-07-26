.class public Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;
.super Lcom/facebook/imagepipeline/image/CloseableBitmap;
.source "CloseableAnimatedBitmap.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mBitmapReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmapReferences":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    .local p2, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Need at least 1 frame!"

    invoke-static {v1, v4}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 47
    .local v0, "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_0
    move v1, v3

    .line 43
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    .line 51
    iget-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_2

    :goto_2
    const-string v1, "Arrays length mismatch!"

    invoke-static {v2, v1}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 52
    return-void

    :cond_2
    move v2, v3

    .line 51
    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/facebook/common/references/ResourceReleaser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/references/ResourceReleaser",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p2, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "resourceReleaser":Lcom/facebook/common/references/ResourceReleaser;, "Lcom/facebook/common/references/ResourceReleaser<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Need at least 1 frame!"

    invoke-static {v1, v4}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    invoke-static {v0, p3}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move v1, v3

    .line 66
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    .line 74
    iget-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_2

    :goto_2
    const-string v1, "Arrays length mismatch!"

    invoke-static {v2, v1}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 75
    return-void

    :cond_2
    move v2, v3

    .line 74
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    if-nez v1, :cond_0

    .line 85
    monitor-exit p0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    .line 88
    .local v0, "bitmapReferences":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmapReferences:Ljava/util/List;

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 91
    .end local v0    # "bitmapReferences":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBitmaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    return-object v0
.end method

.method public getDurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mDurations:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 160
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getSizeInBytes()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 138
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method public getUnderlyingBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 129
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;

    .line 151
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedBitmap;->mBitmaps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
