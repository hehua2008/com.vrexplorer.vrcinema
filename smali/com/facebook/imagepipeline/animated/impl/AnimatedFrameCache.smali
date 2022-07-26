.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    }
.end annotation


# instance fields
.field private final mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache",
            "<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver",
            "<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeItemsPool:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mImageCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .locals 1
    .param p1, "imageCacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache",
            "<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "backingCache":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 92
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 93
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    .line 94
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 100
    return-void
.end method

.method private keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    .locals 2
    .param p1, "frameIndex"    # I

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;-><init>(Lcom/facebook/cache/common/CacheKey;I)V

    return-object v0
.end method

.method private declared-synchronized popFirstFreeItemKey()Lcom/facebook/cache/common/CacheKey;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    const/4 v1, 0x0

    .line 161
    .local v1, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/cache/common/CacheKey;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/facebook/cache/common/CacheKey;

    move-object v1, v0

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-object v1

    .line 160
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/cache/common/CacheKey;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public cache(ILcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .param p1, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    .local p2, "imageRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    invoke-virtual {v0, v1, p2, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .param p1, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public getForReuse()Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->popFirstFreeItemKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 148
    .local v1, "key":Lcom/facebook/cache/common/CacheKey;
    if-nez v1, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 152
    .local v0, "imageRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public declared-synchronized onReusabilityChange(Lcom/facebook/cache/common/CacheKey;Z)V
    .locals 1
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "isReusable"    # Z

    .prologue
    .line 103
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
