.class public Lcom/facebook/react/bridge/CatalystInstanceImpl;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/CatalystInstance;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;,
        Lcom/facebook/react/bridge/CatalystInstanceImpl$JSProfilerTraceListener;,
        Lcom/facebook/react/bridge/CatalystInstanceImpl$NativeExceptionHandler;,
        Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;,
        Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;
    }
.end annotation


# static fields
.field private static final sNextInstanceIdForTrace:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile mAcceptCalls:Z

.field private final mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDestroyed:Z

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private mInitialized:Z

.field private mJSBundleHasLoaded:Z

.field private final mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final mJSCallsPendingInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mJSCallsPendingInitLock:Ljava/lang/Object;

.field private final mJSModuleRegistry:Lcom/facebook/react/bridge/JavaScriptModuleRegistry;

.field private final mJsPendingCallsTitleForTrace:Ljava/lang/String;

.field private final mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

.field private final mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

.field private final mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

.field private final mPendingJSCalls:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

.field private mSourceURL:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTraceListener:Lcom/facebook/systrace/TraceListener;

.field private final mUIBackgroundQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->sNextInstanceIdForTrace:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/NativeModuleRegistry;Lcom/facebook/react/bridge/JSBundleLoader;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V
    .locals 8
    .param p1, "reactQueueConfigurationSpec"    # Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;
    .param p2, "jsExecutor"    # Lcom/facebook/react/bridge/JavaScriptExecutor;
    .param p3, "nativeModuleRegistry"    # Lcom/facebook/react/bridge/NativeModuleRegistry;
    .param p4, "jsBundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;
    .param p5, "nativeModuleCallExceptionHandler"    # Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mPendingJSCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pending_js_calls_instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/CatalystInstanceImpl;->sNextInstanceIdForTrace:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJsPendingCallsTitleForTrace:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInit:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInitLock:Ljava/lang/Object;

    .line 82
    iput-boolean v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mInitialized:Z

    .line 83
    iput-boolean v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    .line 98
    const-string v0, "ReactNative"

    const-string v1, "Initializing React Xplat Bridge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 101
    new-instance v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$NativeExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$NativeExceptionHandler;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;Lcom/facebook/react/bridge/CatalystInstanceImpl$1;)V

    invoke-static {p1, v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;->create(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    iput-object p3, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    .line 106
    new-instance v0, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSModuleRegistry:Lcom/facebook/react/bridge/JavaScriptModuleRegistry;

    .line 107
    iput-object p4, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 108
    iput-object p5, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 109
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;->getNativeModulesQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 110
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;->getUIBackgroundQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mUIBackgroundQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 111
    new-instance v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$JSProfilerTraceListener;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$JSProfilerTraceListener;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    iput-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mTraceListener:Lcom/facebook/systrace/TraceListener;

    .line 113
    const-string v0, "ReactNative"

    const-string v1, "Initializing React Xplat Bridge before initializeBridge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;

    invoke-direct {v1, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$BridgeCallback;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    .line 117
    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    iget-object v5, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mUIBackgroundQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    .line 120
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getJavaModules(Lcom/facebook/react/bridge/JSInstance;)Ljava/util/Collection;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    .line 121
    invoke-virtual {v0}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getCxxModules()Ljava/util/Collection;

    move-result-object v7

    move-object v0, p0

    move-object v2, p2

    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->initializeBridge(Lcom/facebook/react/bridge/ReactCallback;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/bridge/queue/MessageQueueThread;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 122
    const-string v0, "ReactNative"

    const-string v1, "Initializing React Xplat Bridge after initializeBridge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/NativeModuleRegistry;Lcom/facebook/react/bridge/JSBundleLoader;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;Lcom/facebook/react/bridge/CatalystInstanceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;
    .param p2, "x1"    # Lcom/facebook/react/bridge/JavaScriptExecutor;
    .param p3, "x2"    # Lcom/facebook/react/bridge/NativeModuleRegistry;
    .param p4, "x3"    # Lcom/facebook/react/bridge/JSBundleLoader;
    .param p5, "x4"    # Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .param p6, "x5"    # Lcom/facebook/react/bridge/CatalystInstanceImpl$1;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/bridge/CatalystInstanceImpl;-><init>(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/NativeModuleRegistry;Lcom/facebook/react/bridge/JSBundleLoader;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Lcom/facebook/react/bridge/NativeModuleRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->incrementPendingJSCalls()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->decrementPendingJSCalls()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mPendingJSCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Lcom/facebook/jni/HybridData;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/react/bridge/CatalystInstanceImpl;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/bridge/CatalystInstanceImpl;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->onNativeException(Ljava/lang/Exception;)V

    return-void
.end method

.method private decrementPendingJSCalls()V
    .locals 5

    .prologue
    .line 463
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mPendingJSCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 466
    .local v1, "newPendingCalls":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 467
    .local v0, "isNowIdle":Z
    :goto_0
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJsPendingCallsTitleForTrace:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 472
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    new-instance v3, Lcom/facebook/react/bridge/CatalystInstanceImpl$4;

    invoke-direct {v3, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$4;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 482
    :cond_0
    return-void

    .line 466
    .end local v0    # "isNowIdle":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private incrementPendingJSCalls()V
    .locals 6

    .prologue
    .line 444
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mPendingJSCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 445
    .local v0, "oldPendingCalls":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 446
    .local v1, "wasIdle":Z
    :goto_0
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJsPendingCallsTitleForTrace:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/systrace/Systrace;->traceCounter(JLjava/lang/String;I)V

    .line 450
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    new-instance v3, Lcom/facebook/react/bridge/CatalystInstanceImpl$3;

    invoke-direct {v3, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$3;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 460
    :cond_0
    return-void

    .line 445
    .end local v1    # "wasIdle":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private native initializeBridge(Lcom/facebook/react/bridge/ReactCallback;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/bridge/queue/MessageQueueThread;Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactCallback;",
            "Lcom/facebook/react/bridge/JavaScriptExecutor;",
            "Lcom/facebook/react/bridge/queue/MessageQueueThread;",
            "Lcom/facebook/react/bridge/queue/MessageQueueThread;",
            "Lcom/facebook/react/bridge/queue/MessageQueueThread;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/bridge/JavaModuleWrapper;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/bridge/ModuleHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method private native jniCallJSCallback(ILcom/facebook/react/bridge/NativeArray;)V
.end method

.method private native jniCallJSFunction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V
.end method

.method private native jniExtendNativeModules(Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/bridge/JavaModuleWrapper;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/bridge/ModuleHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method private native jniHandleMemoryPressure(I)V
.end method

.method private native jniLoadScriptFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V
.end method

.method private native jniLoadScriptFromFile(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native jniSetSourceURL(Ljava/lang/String;)V
.end method

.method private onNativeException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 486
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;->getUIQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/bridge/CatalystInstanceImpl$5;

    invoke-direct {v1, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$5;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method


# virtual methods
.method public addBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public callFunction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arguments"    # Lcom/facebook/react/bridge/NativeArray;

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/facebook/react/bridge/NativeArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "call":Ljava/lang/String;
    const-string v1, "ReactNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling JS function after bridge has been destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v0    # "call":Ljava/lang/String;
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    if-nez v1, :cond_2

    .line 273
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    if-nez v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInit:Ljava/util/ArrayList;

    new-instance v3, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;

    invoke-direct {v3, p1, p2, p3}, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v2

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniCallJSFunction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ReactNative"

    const-string v1, "CatalystInstanceImpl.destroy() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 306
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    .line 313
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    new-instance v1, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$1;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 336
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mTraceListener:Lcom/facebook/systrace/TraceListener;

    invoke-static {v0}, Lcom/facebook/systrace/Systrace;->unregisterListener(Lcom/facebook/systrace/TraceListener;)V

    goto :goto_0
.end method

.method public extendNativeModules(Lcom/facebook/react/bridge/NativeModuleRegistry;)V
    .locals 3
    .param p1, "modules"    # Lcom/facebook/react/bridge/NativeModuleRegistry;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    invoke-virtual {v2, p1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->registerModules(Lcom/facebook/react/bridge/NativeModuleRegistry;)V

    .line 170
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getJavaModules(Lcom/facebook/react/bridge/JSInstance;)Ljava/util/Collection;

    move-result-object v1

    .line 171
    .local v1, "javaModules":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/react/bridge/JavaModuleWrapper;>;"
    invoke-virtual {p1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getCxxModules()Ljava/util/Collection;

    move-result-object v0

    .line 173
    .local v0, "cxxModules":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/react/bridge/ModuleHolder;>;"
    invoke-direct {p0, v1, v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniExtendNativeModules(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 174
    return-void
.end method

.method public getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "jsInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSModuleRegistry:Lcom/facebook/react/bridge/JavaScriptModuleRegistry;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;->getJavaScriptModule(Lcom/facebook/react/bridge/CatalystInstance;Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    return-object v0
.end method

.method public native getJavaScriptContext()J
.end method

.method public getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "nativeModuleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method

.method public getNativeModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/NativeModuleRegistry;->getAllModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mReactQueueConfiguration:Lcom/facebook/react/bridge/queue/ReactQueueConfigurationImpl;

    return-object v0
.end method

.method public getSourceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mSourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public handleMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V
    .locals 1
    .param p1, "level"    # Lcom/facebook/react/bridge/MemoryPressure;

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/MemoryPressure;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniHandleMemoryPressure(I)V

    goto :goto_0
.end method

.method public hasNativeModule(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "nativeModuleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModuleRegistry:Lcom/facebook/react/bridge/NativeModuleRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/NativeModuleRegistry;->hasModule(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRunJSBundle()Z
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSBundleHasLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 3
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 350
    const-string v0, "ReactNative"

    const-string v2, "CatalystInstanceImpl.initialize()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This catalyst instance has already been initialized"

    invoke-static {v0, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 357
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    const-string v2, "RunJSBundle hasn\'t completed."

    invoke-static {v0, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 360
    iput-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mInitialized:Z

    .line 361
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mNativeModulesQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    new-instance v1, Lcom/facebook/react/bridge/CatalystInstanceImpl$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/bridge/CatalystInstanceImpl$2;-><init>(Lcom/facebook/react/bridge/CatalystInstanceImpl;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 367
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeCallback(ILcom/facebook/react/bridge/NativeArray;)V
    .locals 2
    .param p1, "callbackID"    # I
    .param p2, "arguments"    # Lcom/facebook/react/bridge/NativeArray;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "ReactNative"

    const-string v1, "Invoking JS callback after bridge has been destroyed."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniCallJSCallback(ILcom/facebook/react/bridge/NativeArray;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mDestroyed:Z

    return v0
.end method

.method loadScriptFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetURL"    # Ljava/lang/String;
    .param p3, "loadSynchronously"    # Z

    .prologue
    .line 205
    iput-object p2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mSourceURL:Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniLoadScriptFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V

    .line 207
    return-void
.end method

.method loadScriptFromFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sourceURL"    # Ljava/lang/String;
    .param p3, "loadSynchronously"    # Z

    .prologue
    .line 210
    iput-object p2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mSourceURL:Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniLoadScriptFromFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    return-void
.end method

.method public removeBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mBridgeIdleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public runJSBundle()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 220
    const-string v2, "ReactNative"

    const-string v3, "CatalystInstanceImpl.runJSBundle()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSBundleHasLoaded:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "JS bundle was already loaded!"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    invoke-virtual {v1, p0}, Lcom/facebook/react/bridge/JSBundleLoader;->loadScript(Lcom/facebook/react/bridge/CatalystInstanceImpl;)Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mAcceptCalls:Z

    .line 233
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;

    .line 234
    .local v0, "call":Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;
    iget-object v3, v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mModule:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mMethod:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mArguments:Lcom/facebook/react/bridge/NativeArray;

    invoke-direct {p0, v3, v4, v5}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniCallJSFunction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V

    goto :goto_1

    .line 238
    .end local v0    # "call":Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 221
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSCallsPendingInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mJSBundleHasLoaded:Z

    .line 238
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mTraceListener:Lcom/facebook/systrace/TraceListener;

    invoke-static {v1}, Lcom/facebook/systrace/Systrace;->registerListener(Lcom/facebook/systrace/TraceListener;)V

    .line 242
    return-void
.end method

.method public native setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method setSourceURLs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceURL"    # Ljava/lang/String;
    .param p2, "remoteURL"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl;->mSourceURL:Ljava/lang/String;

    .line 201
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/CatalystInstanceImpl;->jniSetSourceURL(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public native startProfiler(Ljava/lang/String;)V
.end method

.method public native stopProfiler(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native supportsProfiling()Z
.end method
