.class Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameKey"
.end annotation


# instance fields
.field private final mFrameIndex:I

.field private final mImageCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;I)V
    .locals 0
    .param p1, "imageCacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "frameIndex"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 42
    iput p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    .line 43
    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0, p1}, Lcom/facebook/cache/common/CacheKey;->containsUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    .line 60
    .local v0, "that":Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v4, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    iget v4, v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    :cond_3
    move v1, v2

    .line 63
    goto :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheKey;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "imageCacheKey"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "frameIndex"

    iget v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
