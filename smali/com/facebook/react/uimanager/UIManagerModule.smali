.class public Lcom/facebook/react/uimanager/UIManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UIManagerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/OnBatchCompleteListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/PerformanceCounter;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "UIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final NAME:Ljava/lang/String; = "UIManager"

.field private static final ROOT_VIEW_TAG_INCREMENT:I = 0xa


# instance fields
.field private mBatchId:I

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

.field private final mModuleConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNextRootViewTag:I

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p4, "lazyViewManagersEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Lcom/facebook/react/uimanager/UIImplementationProvider;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "viewManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 87
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/uimanager/UIManagerModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mNextRootViewTag:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 98
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 100
    invoke-static {p2, p4}, Lcom/facebook/react/uimanager/UIManagerModule;->createConstants(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    .line 101
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 102
    invoke-virtual {p3, p1, p2, v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;->createUIImplementation(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;)Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 104
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 105
    return-void
.end method

.method private static createConstants(Ljava/util/List;Z)Ljava/util/Map;
    .locals 4
    .param p1, "lazyViewManagersEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "viewManagerList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    const-wide/16 v2, 0x0

    .line 158
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 159
    const-string v0, "CreateUIManagerConstants"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 161
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstants(Ljava/util/List;Z)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 165
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 166
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 166
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v0
.end method


# virtual methods
.method public addAnimation(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I
    .param p3, "onSuccess"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->addAnimation(IILcom/facebook/react/bridge/Callback;)V

    .line 439
    return-void
.end method

.method public addRootView(Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;)I
    .locals 10
    .param p1, "rootView"    # Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;

    .prologue
    const-wide/16 v8, 0x0

    .line 188
    const-string v0, "UIManagerModule.addRootView"

    invoke-static {v8, v9, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 191
    iget v2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mNextRootViewTag:I

    .line 192
    .local v2, "tag":I
    iget v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mNextRootViewTag:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mNextRootViewTag:I

    .line 197
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    .local v4, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v6

    .line 208
    .local v6, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    new-instance v5, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 209
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V

    .line 211
    .local v5, "themedRootContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/UIImplementation;->registerRootView(Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;IIILcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 213
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$1;

    invoke-direct {v0, p0, v6, v2}, Lcom/facebook/react/uimanager/UIManagerModule$1;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->setOnSizeChangedListener(Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout$OnSizeChangedListener;)V

    .line 227
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 228
    return v2

    .line 203
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "themedRootContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    .end local v6    # "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getWidth()I

    move-result v3

    .line 204
    .restart local v3    # "width":I
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;->getHeight()I

    move-result v4

    .restart local v4    # "height":I
    goto :goto_0
.end method

.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 575
    return-void
.end method

.method public clearJSResponder()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->clearJSResponder()V

    .line 456
    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 512
    return-void
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "rootViewTag"    # I
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    .line 250
    return-void
.end method

.method public dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 461
    return-void
.end method

.method public findSubviewIn(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "point"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    const/4 v1, 0x0

    .line 411
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 412
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 409
    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V

    .line 414
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    return-object v0
.end method

.method public getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "UIManager"

    return-object v0
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "perfMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v1, "LayoutCount"

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIImplementation;->getLayoutCount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "LayoutTimer"

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIImplementation;->getLayoutTimer()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object v0
.end method

.method public getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 128
    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "viewTag"    # I
    .param p2, "moveFrom"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "moveTo"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "addChildTags"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "addAtIndices"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "removeFrom"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 298
    return-void
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measure(ILcom/facebook/react/bridge/Callback;)V

    .line 347
    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureInWindow(ILcom/facebook/react/bridge/Callback;)V

    .line 357
    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 376
    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 391
    return-void
.end method

.method public onBatchComplete()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 530
    iget v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 531
    .local v0, "batchId":I
    iget v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 533
    const-string v1, "onBatchCompleteUI"

    invoke-static {v4, v5, v1}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    const-string v2, "BatchId"

    .line 534
    invoke-virtual {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v1
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 148
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->onCatalystInstanceDestroyed()V

    .line 150
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 151
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->clear()V

    .line 152
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    .line 153
    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostDestroy()V

    .line 143
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostPause()V

    .line 138
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostResume()V

    .line 133
    return-void
.end method

.method public registerAnimation(Lcom/facebook/react/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/facebook/react/animation/Animation;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->registerAnimation(Lcom/facebook/react/animation/Animation;)V

    .line 432
    return-void
.end method

.method public removeAnimation(II)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->removeAnimation(II)V

    .line 446
    return-void
.end method

.method public removeRootView(I)V
    .locals 1
    .param p1, "rootViewTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootView(I)V

    .line 234
    return-void
.end method

.method public removeSubviewsFromContainerWithID(I)V
    .locals 1
    .param p1, "containerTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeSubviewsFromContainerWithID(I)V

    .line 338
    return-void
.end method

.method public replaceExistingNonRootView(II)V
    .locals 1
    .param p1, "oldTag"    # I
    .param p2, "newTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->replaceExistingNonRootView(II)V

    .line 327
    return-void
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 1
    .param p1, "reactTag"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveRootTagFromReactTag(I)I

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "eventType"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->sendAccessibilityEvent(II)V

    .line 555
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setChildren(ILcom/facebook/react/bridge/ReadableArray;)V

    .line 317
    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setJSResponder(IZ)V

    .line 451
    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setLayoutAnimationEnabledExperimental(Z)V

    .line 492
    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 545
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 546
    return-void
.end method

.method public showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "items"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "success"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 476
    return-void
.end method

.method public updateNodeSize(III)V
    .locals 1
    .param p1, "nodeViewTag"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->assertOnUIBackgroundOrNativeModulesThread()V

    .line 239
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateNodeSize(III)V

    .line 240
    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 260
    return-void
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "ancestorReactTag"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V

    .line 425
    return-void
.end method
