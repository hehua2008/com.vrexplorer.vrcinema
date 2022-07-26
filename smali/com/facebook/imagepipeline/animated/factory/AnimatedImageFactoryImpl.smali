.class public Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;


# static fields
.field static sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

.field static sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;


# instance fields
.field private final mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

.field private final mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 45
    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 57
    const-string v0, "com.facebook.animated.gif.GifImage"

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 58
    const-string v0, "com.facebook.animated.webp.WebPImage"

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)V
    .locals 0
    .param p1, "animatedDrawableBackendProvider"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .param p2, "bitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 65
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 66
    return-void
.end method

.method private createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 224
    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 225
    .local v0, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 229
    :cond_0
    return-object v0
.end method

.method private createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p1, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "frameForPreview"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .line 163
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v4

    .line 164
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v5

    .line 162
    invoke-direct {p0, v4, v5, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 166
    .local v1, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->forAnimatedImage(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v3

    .line 167
    .local v3, "tempResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    const/4 v5, 0x0

    .line 168
    invoke-interface {v4, v3, v5}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v2

    .line 169
    .local v2, "drawableBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v4, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$1;

    invoke-direct {v4, p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;)V

    invoke-direct {v0, v2, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    .line 182
    .local v0, "animatedImageCompositor":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 183
    return-object v1
.end method

.method private decodeAllFrames(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 8
    .param p1, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/AnimatedImage;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->forAnimatedImage(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v5

    .line 190
    .local v5, "tempResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    const/4 v7, 0x0

    .line 191
    invoke-interface {v6, v5, v7}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v3

    .line 192
    .local v3, "drawableBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    new-instance v2, Ljava/util/ArrayList;

    .line 193
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v6, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$2;

    invoke-direct {v6, p0, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl$2;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;Ljava/util/List;)V

    invoke-direct {v0, v3, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    .line 207
    .local v0, "animatedImageCompositor":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 209
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getWidth()I

    move-result v6

    .line 210
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getHeight()I

    move-result v7

    .line 208
    invoke-direct {p0, v6, v7, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 212
    .local v1, "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 213
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "bitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_0
    return-object v2
.end method

.method private getCloseableImage(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 8
    .param p1, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p2, "image"    # Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, 0x0

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "decodedFrames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v3, 0x0

    .line 130
    .local v3, "previewBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_0
    iget-boolean v4, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 131
    .local v2, "frameForPreview":I
    :cond_0
    iget-boolean v4, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-eqz v4, :cond_1

    .line 132
    new-instance v4, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 133
    invoke-direct {p0, p2, p3, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    sget-object v6, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 154
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    .line 151
    :goto_0
    return-object v4

    .line 138
    :cond_1
    :try_start_1
    iget-boolean v4, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    if-eqz v4, :cond_2

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->decodeAllFrames(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 143
    :cond_2
    iget-boolean v4, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 144
    invoke-direct {p0, p2, p3, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->createPreviewBitmap(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 146
    :cond_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->newBuilder(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setPreviewBitmap(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v4

    .line 148
    invoke-virtual {v4, v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setFrameForPreview(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v4, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->setDecodedFrames(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResultBuilder;->build()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    .line 151
    .local v0, "animatedImageResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    new-instance v4, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 154
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 153
    .end local v0    # "animatedImageResult":Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .end local v2    # "frameForPreview":I
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 154
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Ljava/lang/Iterable;)V

    throw v4
.end method

.method private static loadIfPresent(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 7
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 79
    sget-object v3, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    if-nez v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 84
    .local v0, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 87
    .local v2, "input":Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    sget-object v3, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sGifAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->getNativePtr()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->size()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decode(JI)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v1

    .line 89
    .local v1, "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    invoke-direct {p0, p2, v1, p3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->getCloseableImage(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 91
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 89
    return-object v3

    .line 91
    .end local v1    # "gifImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .end local v2    # "input":Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v3
.end method

.method public decodeWebP(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 7
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "options"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 106
    sget-object v3, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 111
    .local v0, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/memory/PooledByteBuffer;>;"
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 114
    .local v1, "input":Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    sget-object v3, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->sWebpAnimatedImageDecoder:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;

    .line 115
    invoke-interface {v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->getNativePtr()J

    move-result-wide v4

    .line 116
    invoke-interface {v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->size()I

    move-result v6

    .line 114
    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;->decode(JI)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v2

    .line 117
    .local v2, "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    invoke-direct {p0, p2, v2, p3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;->getCloseableImage(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 119
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 117
    return-object v3

    .line 119
    .end local v1    # "input":Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .end local v2    # "webPImage":Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v3
.end method
