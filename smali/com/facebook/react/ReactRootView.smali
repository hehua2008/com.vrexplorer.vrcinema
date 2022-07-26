.class public Lcom/facebook/react/ReactRootView;
.super Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;
.source "ReactRootView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/RootView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;,
        Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;
    }
.end annotation


# instance fields
.field private mAppProperties:Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsAttachedToInstance:Z

.field private mJSModuleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

.field private mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRootViewTag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactRootView;)Lcom/facebook/react/ReactInstanceManager;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactRootView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/ReactRootView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactRootView;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    return v0
.end method

.method private attachToReactInstanceManager()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 320
    const-string v0, "attachToReactInstanceManager"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 327
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0, p0}, Lcom/facebook/react/ReactInstanceManager;->attachRootView(Lcom/facebook/react/ReactRootView;)V

    .line 328
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
.end method

.method private dispatchJSTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 146
    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    if-nez v2, :cond_1

    .line 147
    :cond_0
    const-string v2, "ReactNative"

    const-string v3, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 153
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 154
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 155
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v2, p1, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    goto :goto_0
.end method

.method private getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 336
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 337
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The application this ReactRootView was rendering was not unmounted before the ReactRootView was garbage collected. This usually means that your application is leaking large amounts of memory. To solve this, make sure to call ReactRootView#unmountReactApplication in the onDestroy() of your hosting Activity or in the onDestroyView() of your hosting Fragment."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 344
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppProperties()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method getJSModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRootViewTag()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    return v0
.end method

.method public onAttachedToReactInstance()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    invoke-interface {v0, p0}, Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;->onAttachedToReactInstance(Lcom/facebook/react/ReactRootView;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->onAttachedToWindow()V

    .line 175
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "androidEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 117
    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    const-string v2, "ReactNative"

    const-string v3, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 124
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 125
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 126
    .local v0, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v2, p1, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildStartedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->onDetachedFromWindow()V

    .line 183
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 132
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    const-string v0, "ReactRootView.onMeasure"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 102
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 103
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/ReactRootView;->setMeasuredDimension(II)V

    .line 106
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 138
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method runApplication()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 276
    const-string v5, "ReactRootView.runApplication"

    invoke-static {v8, v9, v5}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 278
    :try_start_0
    iget-object v5, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 299
    :cond_0
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 301
    :goto_0
    return-void

    .line 282
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v5}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 283
    .local v4, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-nez v4, :cond_2

    .line 299
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    .line 287
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v2

    .line 289
    .local v2, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 290
    .local v0, "appParams":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v5, "rootTag"

    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 291
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v1

    .line 292
    .local v1, "appProperties":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 293
    const-string v5, "initialProps"

    invoke-static {v1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getJSModuleName()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "jsAppModuleName":Ljava/lang/String;
    const-class v5, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v5, v3, v0}, Lcom/facebook/react/modules/appregistry/AppRegistry;->runApplication(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    .end local v0    # "appParams":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v1    # "appProperties":Landroid/os/Bundle;
    .end local v2    # "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    .end local v3    # "jsAppModuleName":Ljava/lang/String;
    .end local v4    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :catchall_0
    move-exception v5

    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v5
.end method

.method public setAppProperties(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appProperties"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 267
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 268
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->runApplication()V

    .line 269
    return-void
.end method

.method public setEventListener(Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    .line 255
    return-void
.end method

.method public setRootViewTag(I)V
    .locals 0
    .param p1, "rootViewTag"    # I

    .prologue
    .line 351
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 352
    return-void
.end method

.method simulateAttachForTesting()V
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 310
    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "initialProperties"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 209
    const-string v0, "startReactApplication"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 211
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 216
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This root view has already been attached to a catalyst instance manager"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 220
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 221
    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 224
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 232
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
.end method

.method public unmountReactApplication()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0, p0}, Lcom/facebook/react/ReactInstanceManager;->detachRootView(Lcom/facebook/react/ReactRootView;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 245
    :cond_0
    return-void
.end method
