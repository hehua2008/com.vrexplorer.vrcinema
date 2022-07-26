.class public Lcom/facebook/react/views/scroll/ReactScrollView;
.super Landroid/widget/ScrollView;
.source "ReactScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static sScrollerField:Ljava/lang/reflect/Field;

.field private static sTriedToGetScrollerField:Z


# instance fields
.field private mClippingRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mDoneFlinging:Z

.field private mDragging:Z

.field private mEndBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEndFillColor:I

.field private mFlinging:Z

.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

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

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSendMomentumEvents:Z

.field private final mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/scroll/FpsListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 5
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "fpsListener"    # Lcom/facebook/react/views/scroll/FpsListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v2, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {v2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 52
    new-instance v2, Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-direct {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 59
    iput-boolean v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    .line 61
    iput-object v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 74
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 76
    sget-boolean v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    if-nez v2, :cond_0

    .line 77
    sput-boolean v3, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    .line 79
    :try_start_0
    const-class v2, Landroid/widget/ScrollView;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    .line 80
    sget-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    sget-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 91
    :try_start_1
    sget-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "scroller":Ljava/lang/Object;
    instance-of v2, v1, Landroid/widget/OverScroller;

    if-eqz v2, :cond_1

    .line 93
    check-cast v1, Landroid/widget/OverScroller;

    .end local v1    # "scroller":Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 109
    const/high16 v2, 0x2000000

    invoke-virtual {p0, v2}, Lcom/facebook/react/views/scroll/ReactScrollView;->setScrollBarStyle(I)V

    .line 110
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ReactNative"

    const-string v3, "Failed to get mScroller field for ScrollView! This app will exhibit the bounce-back scrolling bug :("

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "scroller":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string v2, "ReactNative"

    const-string v3, "Failed to cast mScroller field in ScrollView (probably due to OEM changes to AOSP)! This app will exhibit the bounce-back scrolling bug :("

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 101
    .end local v1    # "scroller":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get mScroller from ScrollView!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    iput-object v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactScrollView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDoneFlinging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/facebook/react/views/scroll/ReactScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDoneFlinging:Z

    return p1
.end method

.method static synthetic access$102(Lcom/facebook/react/views/scroll/ReactScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFlinging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/scroll/ReactScrollView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->disableFpsListener()V

    return-void
.end method

.method private disableFpsListener()V
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->disable(Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method private enableFpsListener()V
    .locals 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->enable(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method private getMaxScrollY()I
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 321
    .local v0, "contentHeight":I
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 322
    .local v1, "viewportHeight":I
    const/4 v2, 0x0

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .prologue
    .line 425
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v2, :cond_0

    .line 426
    new-instance v2, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-direct {v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 427
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 428
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 430
    if-nez v0, :cond_1

    .line 431
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-super {p0, v2}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v2

    .line 433
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 435
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-super {p0, v1}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isScrollPerfLoggingEnabled()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

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


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 327
    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0, v5}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 330
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 331
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    .end local v0    # "content":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 335
    return-void
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 259
    .local v12, "scrollWindowHeight":I
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 260
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v1

    .line 261
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    const v8, 0x7fffffff

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 259
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 271
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->postInvalidateOnAnimation()V

    .line 278
    .end local v12    # "scrollWindowHeight":I
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFlinging:Z

    .line 280
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V

    .line 281
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;)V

    .line 282
    new-instance v11, Lcom/facebook/react/views/scroll/ReactScrollView$1;

    invoke-direct {v11, p0}, Lcom/facebook/react/views/scroll/ReactScrollView$1;-><init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    .line 295
    .local v11, "r":Ljava/lang/Runnable;
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v11, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 297
    .end local v11    # "r":Ljava/lang/Runnable;
    :cond_1
    return-void

    .line 275
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outClippingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    return-void
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 150
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 153
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 368
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 370
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    .line 376
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 183
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V

    .line 184
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 185
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V

    move v0, v1

    .line 186
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
    .line 136
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    .line 137
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 385
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v0

    .line 390
    .local v0, "currentScrollY":I
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v1

    .line 391
    .local v1, "maxScrollY":I
    if-le v0, v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 346
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v0

    .line 354
    .local v0, "scrollRange":I
    if-lt p2, v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 356
    move p2, v0

    .line 363
    .end local v0    # "scrollRange":I
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 364
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 159
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFlinging:Z

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDoneFlinging:Z

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 171
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v1

    .line 168
    invoke-static {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;FF)V

    .line 173
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 142
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 145
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/react/views/scroll/VelocityHelper;->calculateVelocity(Landroid/view/MotionEvent;)V

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 200
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 203
    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 204
    invoke-virtual {v3}, Lcom/facebook/react/views/scroll/VelocityHelper;->getYVelocity()F

    move-result v3

    .line 201
    invoke-static {p0, v2, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V

    .line 205
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 206
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->disableFpsListener()V

    .line 209
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 397
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

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
    .line 409
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    .line 410
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    .line 414
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    .line 418
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    .line 406
    return-void
.end method

.method public setEndFillColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 338
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    if-eq p1, v0, :cond_0

    .line 339
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 340
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    .line 342
    :cond_0
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 1
    .param p1, "removeClippedSubviews"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    .line 217
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    .line 218
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 219
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    .line 122
    return-void
.end method

.method public setScrollPerfTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "scrollPerfTag"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSendMomentumEvents(Z)V
    .locals 0
    .param p1, "sendMomentumEvents"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    .line 114
    return-void
.end method

.method public updateClippingRect()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "contentView":Landroid/view/View;
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .end local v0    # "contentView":Landroid/view/View;
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    goto :goto_0
.end method
