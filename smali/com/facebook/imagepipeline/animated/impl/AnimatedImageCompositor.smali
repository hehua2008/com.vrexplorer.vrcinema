.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
.super Ljava/lang/Object;
.source "AnimatedImageCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;,
        Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;
    }
.end annotation


# instance fields
.field private final mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

.field private final mCallback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;

.field private final mTransparentFillPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V
    .locals 3
    .param p1, "animatedDrawableBackend"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .param p2, "callback"    # Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 71
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mCallback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 76
    return-void
.end method

.method private disposeToBackground(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .prologue
    .line 189
    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->xOffset:I

    int-to-float v1, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->yOffset:I

    int-to-float v2, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->xOffset:I

    iget v3, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->width:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->yOffset:I

    iget v4, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->height:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mTransparentFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    return-void
.end method

.method private isFrameNeededForRendering(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 205
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 206
    .local v1, "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v0, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 207
    .local v0, "disposalMethod":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v2, :cond_0

    .line 209
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    .line 223
    :goto_0
    return-object v2

    .line 210
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v2, :cond_2

    .line 211
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isFullFrame(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->NOT_REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_0

    .line 218
    :cond_1
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->REQUIRED:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_0

    .line 220
    :cond_2
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v2, :cond_3

    .line 221
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->SKIP:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_0

    .line 223
    :cond_3
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->ABORT:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    goto :goto_0
.end method

.method private isFullFrame(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z
    .locals 2
    .param p1, "frameInfo"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .prologue
    .line 241
    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->xOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->yOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->width:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 243
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->height:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 244
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyFrame(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 228
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v3, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    .line 232
    .local v0, "currFrameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 233
    .local v1, "prevFrameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->blendOperation:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isFullFrame(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    :cond_2
    iget-object v3, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_3

    .line 237
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isFullFrame(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareCanvasWithClosestCachedFrame(ILandroid/graphics/Canvas;)I
    .locals 8
    .param p1, "previousFrameNumber"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_3

    .line 153
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isFrameNeededForRendering(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;

    move-result-object v2

    .line 154
    .local v2, "neededResult":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;
    sget-object v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$1;->$SwitchMap$com$facebook$imagepipeline$animated$impl$AnimatedImageCompositor$FrameNeededResult:[I

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 152
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v4, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    .line 157
    .local v0, "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mCallback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;

    invoke-interface {v4, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;->getCachedBitmap(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 158
    .local v3, "startBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_2

    .line 160
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    iget-object v4, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v5, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v4, v5, :cond_1

    .line 162
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 166
    .end local v1    # "index":I
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 185
    .end local v0    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .end local v2    # "neededResult":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;
    .end local v3    # "startBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :goto_1
    :pswitch_1
    return v1

    .line 166
    .restart local v0    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .restart local v1    # "index":I
    .restart local v2    # "neededResult":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;
    .restart local v3    # "startBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v4

    .line 169
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isKeyFrame(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 177
    .end local v0    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .end local v3    # "startBitmap":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "neededResult":Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$FrameNeededResult;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public renderFrame(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "frameNumber"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->isKeyFrame(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v5, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->prepareCanvasWithClosestCachedFrame(ILandroid/graphics/Canvas;)I

    move-result v4

    .line 100
    .local v4, "nextIndex":I
    :goto_0
    move v3, v4

    .local v3, "index":I
    :goto_1
    if-ge v3, p1, :cond_4

    .line 101
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v5, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 102
    .local v2, "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v1, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 103
    .local v1, "disposalMethod":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    sget-object v5, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v5, :cond_2

    .line 100
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v1    # "disposalMethod":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .end local v2    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .end local v3    # "index":I
    .end local v4    # "nextIndex":I
    :cond_1
    move v4, p1

    .restart local v4    # "nextIndex":I
    goto :goto_0

    .line 106
    .restart local v1    # "disposalMethod":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .restart local v2    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .restart local v3    # "index":I
    :cond_2
    iget-object v5, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->blendOperation:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v5, v6, :cond_3

    .line 107
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 109
    :cond_3
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v5, v3, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 110
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mCallback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;

    invoke-interface {v5, v3, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;->onIntermediateResult(ILandroid/graphics/Bitmap;)V

    .line 111
    sget-object v5, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v5, :cond_0

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    goto :goto_2

    .line 116
    .end local v1    # "disposalMethod":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .end local v2    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    :cond_4
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v5, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 117
    .restart local v2    # "frameInfo":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v5, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->blendOperation:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v5, v6, :cond_5

    .line 118
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->disposeToBackground(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 121
    :cond_5
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v5, p1, v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 122
    return-void
.end method
