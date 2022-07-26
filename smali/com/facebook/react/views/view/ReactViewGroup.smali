.class public Lcom/facebook/react/views/view/ReactViewGroup;
.super Landroid/view/ViewGroup;
.source "ReactViewGroup.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactInterceptingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;
.implements Lcom/facebook/react/touch/ReactHitSlopView;
.implements Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final DEFAULT_BACKGROUND_COLOR:I

.field private static final sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private static final sHelperRect:Landroid/graphics/Rect;


# instance fields
.field private mAllChildren:[Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAllChildrenCount:I

.field private mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mClippingRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

.field private mHitSlopRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNeedsOffscreenAlphaCompositing:Z

.field private mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field private mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRemoveClippedSubviews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 92
    iput-boolean v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 97
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 101
    iput-boolean v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    .line 107
    new-instance v0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/view/View;)V

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 507
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 508
    .local v1, "count":I
    array-length v2, v0

    .line 509
    .local v2, "size":I
    if-ne p2, v1, :cond_1

    .line 510
    if-ne v2, v1, :cond_0

    .line 511
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 512
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 515
    :cond_0
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object p1, v0, v3

    .line 530
    :goto_0
    return-void

    .line 516
    :cond_1
    if-ge p2, v1, :cond_3

    .line 517
    if-ne v2, v1, :cond_2

    .line 518
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 519
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 525
    :goto_1
    aput-object p1, v0, p2

    .line 526
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    goto :goto_0

    .line 523
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 528
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .prologue
    .line 555
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v2, :cond_0

    .line 556
    new-instance v2, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-direct {v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 557
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 560
    if-nez v0, :cond_1

    .line 561
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 568
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v2

    .line 563
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 565
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private indexOfChildInAllChildren(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 495
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 496
    .local v1, "count":I
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 497
    .local v0, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 498
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 502
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 497
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 534
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 535
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 536
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    .line 537
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v4, v0, v2

    .line 544
    :goto_0
    return-void

    .line 538
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 539
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 542
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private updateClippingToRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "clippingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v2, :cond_1

    .line 291
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 292
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/graphics/Rect;II)V
    .locals 12
    .param p1, "clippingRect"    # Landroid/graphics/Rect;
    .param p2, "idx"    # I
    .param p3, "clippedSoFar"    # I

    .prologue
    const/4 v7, 0x1

    .line 299
    iget-object v6, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/View;

    aget-object v1, v6, p2

    .line 300
    .local v1, "child":Landroid/view/View;
    sget-object v6, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 301
    sget-object v6, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sget-object v8, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sget-object v9, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sget-object v10, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 302
    invoke-virtual {p1, v6, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    .line 303
    .local v3, "intersects":Z
    const/4 v5, 0x0

    .line 310
    .local v5, "needUpdateClippingRecursive":Z
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 311
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v7

    .line 312
    .local v4, "isAnimating":Z
    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    .line 315
    sub-int v6, p2, p3

    invoke-super {p0, v6, v7}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 316
    const/4 v5, 0x1

    .line 325
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 326
    instance-of v6, v1, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 329
    check-cast v2, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .line 330
    .local v2, "clippingChild":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    .line 335
    .end local v2    # "clippingChild":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    :cond_1
    return-void

    .line 311
    .end local v4    # "isAnimating":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 317
    .restart local v4    # "isAnimating":Z
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_4

    .line 318
    sub-int v6, p2, p3

    sget-object v8, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-super {p0, v1, v6, v8, v7}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 319
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 320
    const/4 v5, 0x1

    goto :goto_1

    .line 321
    :cond_4
    if-eqz v3, :cond_0

    .line 323
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateSubviewClipStatus(Landroid/view/View;)V
    .locals 9
    .param p1, "subview"    # Landroid/view/View;

    .prologue
    .line 338
    iget-boolean v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v4, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    sget-object v5, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sget-object v7, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sget-object v8, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 348
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    .line 351
    .local v2, "intersects":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 353
    .local v3, "oldIntersects":Z
    :goto_1
    if-eq v2, v3, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_3

    .line 357
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    goto :goto_0

    .line 351
    .end local v0    # "clippedSoFar":I
    .end local v1    # "i":I
    .end local v3    # "oldIntersects":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 360
    .restart local v0    # "clippedSoFar":I
    .restart local v1    # "i":I
    .restart local v3    # "oldIntersects":Z
    :cond_3
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_4

    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 355
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleAddView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 390
    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 446
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 450
    iget-boolean v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 451
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->addInArray(Landroid/view/View;I)V

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 459
    add-int/lit8 v0, v0, 0x1

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 463
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 464
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 431
    return-void
.end method

.method getAllChildrenCount()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getColor()I

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "index"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outClippingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    return-void
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    return v0
.end method

.method public getZIndexMappedChildIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result p1

    .line 418
    .end local p1    # "index":I
    :cond_0
    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 378
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    .line 381
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .line 168
    invoke-interface {v1, p0, p1}, Lcom/facebook/react/touch/OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v1, v2, :cond_0

    .line 175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 116
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 369
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 370
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    .line 373
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method removeAllViewsWithSubviewClippingEnabled()V
    .locals 3

    .prologue
    .line 485
    iget-boolean v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 486
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsInLayout()V

    .line 491
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 492
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 397
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 405
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 406
    return-void
.end method

.method removeViewWithSubviewClippingEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-boolean v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 468
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->indexOfChildInAllChildren(Landroid/view/View;)I

    move-result v2

    .line 472
    .local v2, "index":I
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 475
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 476
    add-int/lit8 v0, v0, 0x1

    .line 474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_1
    sub-int v3, v2, v0

    const/4 v4, 0x1

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 481
    .end local v0    # "clippedSoFar":I
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->removeFromArray(I)V

    .line 482
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported for ReactViewGroup instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "rgb"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    .line 214
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    .line 218
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    .line 222
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    .line 210
    return-void
.end method

.method public setHitSlopRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 577
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    .line 578
    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Z)V
    .locals 0
    .param p1, "needsOffscreenAlphaCompositing"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    .line 206
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .line 163
    return-void
.end method

.method setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0
    .param p1, "pointerEvents"    # Lcom/facebook/react/uimanager/PointerEvents;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 435
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 6
    .param p1, "removeClippedSubviews"    # Z

    .prologue
    const/4 v5, 0x0

    .line 230
    iget-boolean v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-ne p1, v3, :cond_0

    .line 262
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    .line 234
    if-eqz p1, :cond_2

    .line 235
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 236
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v3}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 237
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 238
    const/16 v3, 0xc

    iget v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 239
    .local v2, "initialSize":I
    new-array v3, v2, [Landroid/view/View;

    iput-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 240
    new-instance v3, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-direct {v3, p0, v5}, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/views/view/ReactViewGroup$1;)V

    iput-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v3, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aput-object v0, v3, v1

    .line 244
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    .end local v2    # "initialSize":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 255
    :cond_3
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 256
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    .line 257
    iput-object v5, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 258
    iput-object v5, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 259
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 260
    iput-object v5, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    goto :goto_0
.end method

.method public setTranslucentBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 152
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 154
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    .line 156
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateClippingRect()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
