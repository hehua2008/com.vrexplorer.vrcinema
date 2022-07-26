.class public Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImplSupport;
.super Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;
.source "AnimatedFactoryImplSupport.java"


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/core/ExecutorSupplier;)V
    .locals 0
    .param p1, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p2, "executorSupplier"    # Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/core/ExecutorSupplier;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createAnimatedDrawableFactory(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;
    .locals 6
    .param p1, "animatedDrawableBackendProvider"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .param p2, "animatedDrawableCachingBackendImplProvider"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;
    .param p3, "animatedDrawableUtil"    # Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .param p4, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p5, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImplSupport;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImplSupport;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    return-object v0
.end method
