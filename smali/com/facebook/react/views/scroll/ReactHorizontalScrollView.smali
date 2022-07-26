.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ReactHorizontalScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;


# instance fields
.field private mActivelyScrolling:Z

.field private mClippingRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDragging:Z

.field private mEndBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEndFillColor:I

.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field private mPagingEnabled:Z

.field private mPostTouchRunnable:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRemoveClippedSubviews:Z

.field private mScrollEnabled:Z

.field private mScrollPerfTag:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSendMomentumEvents:Z

.field private final mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fpsListener"    # Lcom/facebook/react/views/scroll/FpsListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 40
    new-instance v0, Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/VelocityHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 45
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 53
    iput v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    .line 62
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    return v0
.end method

.method static synthetic access$002(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollToPage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    return v0
.end method

.method static synthetic access$402(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->disableFpsListener()V

    return-void
.end method

.method private disableFpsListener()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->disable(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method private enableFpsListener()V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->enable(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .prologue
    .line 358
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v2, :cond_0

    .line 359
    new-instance v2, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-direct {v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 360
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    if-nez v0, :cond_1

    .line 364
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-super {p0, v2}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v2

    .line 366
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 368
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private handlePostTouchScrolling()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 271
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    if-eqz v0, :cond_2

    .line 272
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;)V

    .line 275
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    .line 276
    new-instance v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;-><init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    .line 307
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private isScrollPerfLoggingEnabled()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smoothScrollToPage(I)V
    .locals 6
    .param p1, "velocity"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v3

    .line 318
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 320
    .local v0, "currentX":I
    add-int v2, v0, p1

    .line 321
    .local v2, "predictedX":I
    div-int v1, v0, v3

    .line 322
    .local v1, "page":I
    mul-int v4, v1, v3

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    if-le v2, v4, :cond_0

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 325
    :cond_0
    mul-int v4, v1, v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollTo(II)V

    .line 326
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 242
    iget v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    .end local v0    # "content":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 250
    return-void
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollToPage(I)V

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling()V

    .line 175
    return-void

    .line 172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outClippingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    return-void
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 188
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    .line 191
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 136
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V

    .line 137
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    .line 138
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->enableFpsListener()V

    move v0, v1

    .line 139
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 101
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 114
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z

    .line 121
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 123
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 124
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v1

    .line 121
    invoke-static {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;FF)V

    .line 126
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 180
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    .line 183
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return v1

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/react/views/scroll/VelocityHelper;->calculateVelocity(Landroid/view/MotionEvent;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 153
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 156
    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 157
    invoke-virtual {v3}, Lcom/facebook/react/views/scroll/VelocityHelper;->getYVelocity()F

    move-result v3

    .line 154
    invoke-static {p0, v2, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V

    .line 158
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mDragging:Z

    .line 161
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling()V

    .line 164
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 330
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    .line 343
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    .line 347
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    .line 351
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    .line 339
    return-void
.end method

.method public setEndFillColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    if-eq p1, v0, :cond_0

    .line 215
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    .line 216
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndFillColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_0
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "pagingEnabled"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z

    .line 93
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 1
    .param p1, "removeClippedSubviews"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    .line 75
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->updateClippingRect()V

    .line 76
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z

    .line 89
    return-void
.end method

.method public setScrollPerfTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "scrollPerfTag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollPerfTag:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSendMomentumEvents(Z)V
    .locals 0
    .param p1, "sendMomentumEvents"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z

    .line 85
    return-void
.end method

.method public updateClippingRect()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mRemoveClippedSubviews:Z

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "contentView":Landroid/view/View;
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_0

    .line 204
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .end local v0    # "contentView":Landroid/view/View;
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    goto :goto_0
.end method
