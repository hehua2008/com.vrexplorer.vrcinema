.class public Lcom/facebook/react/ReactInstanceManager;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;,
        Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mAttachedRootViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactRootView;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

.field private final mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mCreateReactContextThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDevInterface:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private volatile mHasStartedCreatingInitialContext:Z

.field private final mJSCConfig:Lcom/facebook/react/JSCConfig;

.field private final mJSMainModuleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLazyNativeModulesEnabled:Z

.field private final mLazyViewManagersEnabled:Z

.field private volatile mLifecycleState:Lcom/facebook/react/common/LifecycleState;

.field private final mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

.field private final mMinNumShakes:I

.field private final mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReactInstanceEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetupReactContextInBackgroundEnabled:Z

.field private final mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

.field private final mUseDeveloperSupport:Z

.field private final mUseSeparateUIBackgroundThread:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/lang/String;Ljava/util/List;ZLcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;Lcom/facebook/react/common/LifecycleState;Lcom/facebook/react/uimanager/UIImplementationProvider;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;Lcom/facebook/react/JSCConfig;Lcom/facebook/react/devsupport/RedBoxHandler;ZZLcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ZZIZ)V
    .locals 9
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "currentActivity"    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defaultHardwareBackBtnHandler"    # Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "jsMainModuleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "useDeveloperSupport"    # Z
    .param p8, "bridgeIdleDebugListener"    # Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "initialLifecycleState"    # Lcom/facebook/react/common/LifecycleState;
    .param p10, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p11, "nativeModuleCallExceptionHandler"    # Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .param p12, "jscConfig"    # Lcom/facebook/react/JSCConfig;
    .param p13, "redBoxHandler"    # Lcom/facebook/react/devsupport/RedBoxHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14, "lazyNativeModulesEnabled"    # Z
    .param p15, "lazyViewManagersEnabled"    # Z
    .param p16, "devBundleDownloadListener"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p17, "setupReactContextInBackgroundEnabled"    # Z
    .param p18, "useSeparateUIBackgroundThread"    # Z
    .param p19, "minNumShakes"    # I
    .param p20, "splitPackagesEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;",
            "Lcom/facebook/react/bridge/JSBundleLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;Z",
            "Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;",
            "Lcom/facebook/react/common/LifecycleState;",
            "Lcom/facebook/react/uimanager/UIImplementationProvider;",
            "Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;",
            "Lcom/facebook/react/JSCConfig;",
            "Lcom/facebook/react/devsupport/RedBoxHandler;",
            "ZZ",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "ZZIZ)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p6, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 153
    new-instance v1, Lcom/facebook/react/ReactInstanceManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactInstanceManager$1;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevInterface:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    .line 172
    new-instance v1, Lcom/facebook/react/ReactInstanceManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/ReactInstanceManager$2;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 228
    const-string v1, "ReactNative"

    const-string v2, "ReactInstanceManager.ctor()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {p1}, Lcom/facebook/react/ReactInstanceManager;->initializeSoLoaderIfNecessary(Landroid/content/Context;)V

    .line 231
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 233
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    .line 234
    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 235
    iput-object p3, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 236
    iput-object p4, p0, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 237
    iput-object p5, p0, Lcom/facebook/react/ReactInstanceManager;->mJSMainModuleName:Ljava/lang/String;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    .line 239
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    .line 240
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mDevInterface:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mJSMainModuleName:Ljava/lang/String;

    move-object v1, p1

    move/from16 v4, p7

    move-object/from16 v5, p13

    move-object/from16 v6, p16

    move/from16 v7, p19

    invoke-static/range {v1 .. v7}, Lcom/facebook/react/devsupport/DevSupportManagerFactory;->create(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;I)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 248
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .line 249
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 250
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 251
    new-instance v1, Lcom/facebook/react/MemoryPressureRouter;

    invoke-direct {v1, p1}, Lcom/facebook/react/MemoryPressureRouter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    .line 252
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 253
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    .line 254
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLazyNativeModulesEnabled:Z

    .line 255
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLazyViewManagersEnabled:Z

    .line 256
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mSetupReactContextInBackgroundEnabled:Z

    .line 257
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseSeparateUIBackgroundThread:Z

    .line 258
    move/from16 v0, p19

    iput v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMinNumShakes:I

    .line 260
    if-nez p20, :cond_0

    .line 261
    new-instance v8, Lcom/facebook/react/CoreModulesPackage;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    iget-boolean v3, p0, Lcom/facebook/react/ReactInstanceManager;->mLazyViewManagersEnabled:Z

    invoke-direct {v8, p0, v1, v2, v3}, Lcom/facebook/react/CoreModulesPackage;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V

    .line 267
    .local v8, "coreModulesPackage":Lcom/facebook/react/CoreModulesPackage;
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v8    # "coreModulesPackage":Lcom/facebook/react/CoreModulesPackage;
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->initialize()V

    .line 283
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/BridgeCorePackage;

    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/react/BridgeCorePackage;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/DebugCorePackage;

    invoke-direct {v2}, Lcom/facebook/react/DebugCorePackage;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/ReactNativeCorePackage;

    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    iget-boolean v4, p0, Lcom/facebook/react/ReactInstanceManager;->mLazyViewManagersEnabled:Z

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/react/ReactNativeCorePackage;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/JavaJSExecutor$Factory;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->onJSBundleLoadedFromServer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManager;->setupReactContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->toggleElementInspector()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->invokeDefaultOnBackPressed()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundFromBundleLoader()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/JavaScriptExecutor;
    .param p2, "x2"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactInstanceManager;->createReactContext(Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/react/ReactInstanceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mSetupReactContextInBackgroundEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    return-object v0
.end method

.method static synthetic access$902(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/ReactInstanceManager;
    .param p1, "x1"    # Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    return-object p1
.end method

.method private attachRootViewToInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V
    .locals 6
    .param p1, "rootView"    # Lcom/facebook/react/ReactRootView;
    .param p2, "catalystInstance"    # Lcom/facebook/react/bridge/CatalystInstance;

    .prologue
    const-wide/16 v4, 0x0

    .line 911
    const-string v2, "ReactNative"

    const-string v3, "ReactInstanceManager.attachRootViewToInstance()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v2, "attachRootViewToInstance"

    invoke-static {v4, v5, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 913
    iget-boolean v2, p0, Lcom/facebook/react/ReactInstanceManager;->mSetupReactContextInBackgroundEnabled:Z

    if-nez v2, :cond_0

    .line 914
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 917
    :cond_0
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 918
    .local v1, "uiManagerModule":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->addRootView(Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;)I

    move-result v0

    .line 919
    .local v0, "rootTag":I
    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactRootView;->setRootViewTag(I)V

    .line 920
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->runApplication()V

    .line 921
    const-string v2, "pre_rootView.onAttachedToReactInstance"

    invoke-static {v4, v5, v2, v0}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 925
    new-instance v2, Lcom/facebook/react/ReactInstanceManager$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/react/ReactInstanceManager$8;-><init>(Lcom/facebook/react/ReactInstanceManager;ILcom/facebook/react/ReactRootView;)V

    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 935
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 936
    return-void
.end method

.method public static builder()Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/facebook/react/ReactInstanceManagerBuilder;

    invoke-direct {v0}, Lcom/facebook/react/ReactInstanceManagerBuilder;-><init>()V

    return-object v0
.end method

.method private createReactContext(Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 10
    .param p1, "jsExecutor"    # Lcom/facebook/react/bridge/JavaScriptExecutor;
    .param p2, "jsBundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .prologue
    const-wide/16 v8, 0x0

    .line 972
    const-string v5, "ReactNative"

    const-string v6, "ReactInstanceManager.createReactContext()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sget-object v5, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_REACT_CONTEXT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 974
    new-instance v4, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;-><init>(Landroid/content/Context;)V

    .line 976
    .local v4, "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    iget-boolean v5, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v5, :cond_0

    .line 977
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    .line 980
    :cond_0
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/react/ReactInstanceManager;->processPackages(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Z)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v3

    .line 982
    .local v3, "nativeModuleRegistry":Lcom/facebook/react/bridge/NativeModuleRegistry;
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 985
    .local v2, "exceptionHandler":Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    :goto_0
    new-instance v6, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    invoke-direct {v6}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;-><init>()V

    iget-boolean v5, p0, Lcom/facebook/react/ReactInstanceManager;->mUseSeparateUIBackgroundThread:Z

    if-eqz v5, :cond_4

    .line 987
    invoke-static {}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;->createWithSeparateUIBackgroundThread()Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;

    move-result-object v5

    .line 986
    :goto_1
    invoke-virtual {v6, v5}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setReactQueueConfigurationSpec(Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v5

    .line 989
    invoke-virtual {v5, p1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setJSExecutor(Lcom/facebook/react/bridge/JavaScriptExecutor;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v5

    .line 990
    invoke-virtual {v5, v3}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setRegistry(Lcom/facebook/react/bridge/NativeModuleRegistry;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v5

    .line 991
    invoke-virtual {v5, p2}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v5

    .line 992
    invoke-virtual {v5, v2}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;

    move-result-object v1

    .line 994
    .local v1, "catalystInstanceBuilder":Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;
    sget-object v5, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 996
    const-string v5, "createCatalystInstance"

    invoke-static {v8, v9, v5}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 999
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;->build()Lcom/facebook/react/bridge/CatalystInstanceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1001
    .local v0, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1002
    sget-object v5, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1005
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    if-eqz v5, :cond_1

    .line 1006
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/CatalystInstance;->addBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V

    .line 1008
    :cond_1
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1009
    const-string v5, "__RCTProfileIsProfiling"

    const-string v6, "true"

    invoke-interface {v0, v5, v6}, Lcom/facebook/react/bridge/CatalystInstance;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_2
    invoke-virtual {v4, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 1013
    sget-object v5, Lcom/facebook/react/bridge/ReactMarkerConstants;->PRE_RUN_JS_BUNDLE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v5}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1014
    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->runJSBundle()V

    .line 1016
    return-object v4

    .line 982
    .end local v0    # "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    .end local v1    # "catalystInstanceBuilder":Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;
    .end local v2    # "exceptionHandler":Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    goto :goto_0

    .line 988
    .restart local v2    # "exceptionHandler":Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;->createDefault()Lcom/facebook/react/bridge/queue/ReactQueueConfigurationSpec;

    move-result-object v5

    goto :goto_1

    .line 1001
    .restart local v1    # "catalystInstanceBuilder":Lcom/facebook/react/bridge/CatalystInstanceImpl$Builder;
    :catchall_0
    move-exception v5

    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1002
    sget-object v6, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_CATALYST_INSTANCE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v6}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v5
.end method

.method private detachViewFromInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V
    .locals 2
    .param p1, "rootView"    # Lcom/facebook/react/ReactRootView;
    .param p2, "catalystInstance"    # Lcom/facebook/react/bridge/CatalystInstance;

    .prologue
    .line 941
    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.detachViewFromInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 943
    const-class v0, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/appregistry/AppRegistry;

    .line 944
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/appregistry/AppRegistry;->unmountApplicationComponentAtRootTag(I)V

    .line 945
    return-void
.end method

.method private static initializeSoLoaderIfNecessary(Landroid/content/Context;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 302
    return-void
.end method

.method private invokeDefaultOnBackPressed()V
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 451
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    invoke-interface {v0}, Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;->invokeDefaultOnBackPressed()V

    .line 454
    :cond_0
    return-void
.end method

.method private declared-synchronized moveReactContextToCurrentLifecycleState()V
    .locals 2

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->moveToResumedLifecycleState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_0
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToBeforeCreateLifecycleState()V
    .locals 2

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 638
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_1

    .line 641
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostDestroy()V

    .line 644
    :cond_1
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToBeforeResumeLifecycleState()V
    .locals 2

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 626
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 631
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 627
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized moveToResumedLifecycleState(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_1

    .line 613
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->onHostResume(Landroid/app/Activity;)V

    .line 619
    :cond_1
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onJSBundleLoadedFromServer()V
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 763
    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.onJSBundleLoadedFromServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v0, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    .line 765
    invoke-interface {v1}, Lcom/facebook/react/JSCConfig;->getConfigMap()Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;-><init>(Lcom/facebook/react/bridge/WritableNativeMap;)V

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 767
    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 768
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDownloadedJSBundleFile()Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/JSBundleLoader;->createCachedBundleFromNetworkLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v1

    .line 764
    invoke-direct {p0, v0, v1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    .line 769
    return-void
.end method

.method private onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 3
    .param p1, "jsExecutorFactory"    # Lcom/facebook/react/bridge/JavaJSExecutor$Factory;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 753
    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.onReloadWithJSDebugger()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v0, Lcom/facebook/react/bridge/ProxyJavaScriptExecutor$Factory;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/ProxyJavaScriptExecutor$Factory;-><init>(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 757
    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getJSBundleURLForRemoteDebugging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 758
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v2

    .line 756
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/JSBundleLoader;->createRemoteDebuggerBundleLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v1

    .line 754
    invoke-direct {p0, v0, v1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    .line 759
    return-void
.end method

.method private processPackage(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/NativeModuleRegistryBuilder;)V
    .locals 6
    .param p1, "reactPackage"    # Lcom/facebook/react/ReactPackage;
    .param p2, "nativeModuleRegistryBuilder"    # Lcom/facebook/react/NativeModuleRegistryBuilder;

    .prologue
    const-wide/16 v4, 0x0

    .line 1065
    const-string v0, "processPackage"

    invoke-static {v4, v5, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v1, "className"

    .line 1066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 1068
    instance-of v0, p1, Lcom/facebook/react/ReactPackageLogger;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1069
    check-cast v0, Lcom/facebook/react/ReactPackageLogger;

    invoke-interface {v0}, Lcom/facebook/react/ReactPackageLogger;->startProcessPackage()V

    .line 1071
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/react/NativeModuleRegistryBuilder;->processPackage(Lcom/facebook/react/ReactPackage;)V

    .line 1073
    instance-of v0, p1, Lcom/facebook/react/ReactPackageLogger;

    if-eqz v0, :cond_1

    .line 1074
    check-cast p1, Lcom/facebook/react/ReactPackageLogger;

    .end local p1    # "reactPackage":Lcom/facebook/react/ReactPackage;
    invoke-interface {p1}, Lcom/facebook/react/ReactPackageLogger;->endProcessPackage()V

    .line 1076
    :cond_1
    invoke-static {v4, v5}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 1077
    return-void
.end method

.method private processPackages(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Z)Lcom/facebook/react/bridge/NativeModuleRegistry;
    .locals 8
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "checkAndUpdatePackageMembership"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;Z)",
            "Lcom/facebook/react/bridge/NativeModuleRegistry;"
        }
    .end annotation

    .prologue
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    const-wide/16 v6, 0x0

    .line 1023
    new-instance v1, Lcom/facebook/react/NativeModuleRegistryBuilder;

    iget-boolean v3, p0, Lcom/facebook/react/ReactInstanceManager;->mLazyNativeModulesEnabled:Z

    invoke-direct {v1, p1, p0, v3}, Lcom/facebook/react/NativeModuleRegistryBuilder;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/ReactInstanceManager;Z)V

    .line 1028
    .local v1, "nativeModuleRegistryBuilder":Lcom/facebook/react/NativeModuleRegistryBuilder;
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_PACKAGES_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1031
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackage;

    .line 1032
    .local v2, "reactPackage":Lcom/facebook/react/ReactPackage;
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1035
    :cond_1
    const-string v4, "createAndProcessCustomReactPackage"

    invoke-static {v6, v7, v4}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1039
    if-eqz p3, :cond_2

    .line 1040
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/facebook/react/ReactInstanceManager;->processPackage(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/NativeModuleRegistryBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v3

    .line 1047
    .end local v2    # "reactPackage":Lcom/facebook/react/ReactPackage;
    :cond_3
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_PACKAGES_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1049
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1050
    const-string v3, "buildNativeModuleRegistry"

    invoke-static {v6, v7, v3}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 1053
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/react/NativeModuleRegistryBuilder;->build()Lcom/facebook/react/bridge/NativeModuleRegistry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1055
    .local v0, "nativeModuleRegistry":Lcom/facebook/react/bridge/NativeModuleRegistry;
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1056
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1059
    return-object v0

    .line 1055
    .end local v0    # "nativeModuleRegistry":Lcom/facebook/react/bridge/NativeModuleRegistry;
    :catchall_1
    move-exception v3

    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 1056
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->BUILD_NATIVE_MODULE_REGISTRY_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v3
.end method

.method private recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 3
    .param p1, "jsExecutorFactory"    # Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;
    .param p2, "jsBundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 775
    const-string v1, "ReactNative"

    const-string v2, "ReactInstanceManager.recreateReactContextInBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 778
    new-instance v0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    .line 781
    .local v0, "initParams":Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 782
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mPendingReactContextInitParams:Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;

    goto :goto_0
.end method

.method private recreateReactContextInBackgroundFromBundleLoader()V
    .locals 2
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 415
    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.recreateReactContextInBackgroundFromBundleLoader()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    .line 419
    invoke-interface {v1}, Lcom/facebook/react/JSCConfig;->getConfigMap()Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSCJavaScriptExecutor$Factory;-><init>(Lcom/facebook/react/bridge/WritableNativeMap;)V

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 418
    invoke-direct {p0, v0, v1}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground(Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V

    .line 421
    return-void
.end method

.method private recreateReactContextInBackgroundInner()V
    .locals 4
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 371
    const-string v1, "ReactNative"

    const-string v2, "ReactInstanceManager.recreateReactContextInBackgroundInner()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 374
    iget-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mJSMainModuleName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    .line 375
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    .line 379
    .local v0, "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->hasUpToDateJSBundleInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->onJSBundleLoadedFromServer()V

    .line 411
    .end local v0    # "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :goto_0
    return-void

    .line 384
    .restart local v0    # "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-nez v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    new-instance v2, Lcom/facebook/react/ReactInstanceManager$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/react/ReactInstanceManager$3;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    goto :goto_0

    .line 410
    .end local v0    # "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundFromBundleLoader()V

    goto :goto_0
.end method

.method private runCreateReactContextOnNewThread(Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V
    .locals 2
    .param p1, "initParams"    # Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 790
    const-string v0, "ReactNative"

    const-string v1, "ReactInstanceManager.runCreateReactContextOnNewThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 792
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->tearDownReactContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/react/ReactInstanceManager$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/ReactInstanceManager$4;-><init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    .line 849
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 850
    return-void
.end method

.method private setupReactContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 10
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    const-wide/16 v8, 0x0

    .line 853
    const-string v4, "ReactNative"

    const-string v5, "ReactInstanceManager.setupReactContext()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->PRE_SETUP_REACT_CONTEXT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 855
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->SETUP_REACT_CONTEXT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 856
    const-string v4, "setupReactContext"

    invoke-static {v8, v9, v4}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 857
    iget-boolean v4, p0, Lcom/facebook/react/ReactInstanceManager;->mSetupReactContextInBackgroundEnabled:Z

    if-nez v4, :cond_0

    .line 858
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 860
    :cond_0
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReactContext;

    iput-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 862
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstance;

    .line 864
    .local v0, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->initialize()V

    .line 865
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v4, p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V

    .line 866
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    invoke-virtual {v4, v0}, Lcom/facebook/react/MemoryPressureRouter;->addMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V

    .line 867
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveReactContextToCurrentLifecycleState()V

    .line 869
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->ATTACH_MEASURED_ROOT_VIEWS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 870
    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    monitor-enter v5

    .line 871
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/ReactRootView;

    .line 872
    .local v3, "rootView":Lcom/facebook/react/ReactRootView;
    invoke-direct {p0, v3, v0}, Lcom/facebook/react/ReactInstanceManager;->attachRootViewToInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V

    goto :goto_0

    .line 874
    .end local v3    # "rootView":Lcom/facebook/react/ReactRootView;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->ATTACH_MEASURED_ROOT_VIEWS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 877
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    .line 878
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v2, v4, [Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 879
    .local v2, "listeners":[Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listeners":[Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    check-cast v2, [Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .line 881
    .restart local v2    # "listeners":[Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 882
    .local v1, "listener":Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    invoke-interface {v1, p1}, Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;->onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V

    .line 881
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 884
    .end local v1    # "listener":Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;
    :cond_2
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 885
    sget-object v4, Lcom/facebook/react/bridge/ReactMarkerConstants;->SETUP_REACT_CONTEXT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v4}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 886
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    new-instance v5, Lcom/facebook/react/ReactInstanceManager$5;

    invoke-direct {v5, p0}, Lcom/facebook/react/ReactInstanceManager$5;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    .line 892
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    new-instance v5, Lcom/facebook/react/ReactInstanceManager$6;

    invoke-direct {v5, p0}, Lcom/facebook/react/ReactInstanceManager$6;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 898
    iget-boolean v4, p0, Lcom/facebook/react/ReactInstanceManager;->mUseSeparateUIBackgroundThread:Z

    if-eqz v4, :cond_3

    .line 899
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    new-instance v5, Lcom/facebook/react/ReactInstanceManager$7;

    invoke-direct {v5, p0}, Lcom/facebook/react/ReactInstanceManager$7;-><init>(Lcom/facebook/react/ReactInstanceManager;)V

    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactContext;->runOnUiBackgroundQueueThread(Ljava/lang/Runnable;)V

    .line 906
    :cond_3
    return-void
.end method

.method private tearDownReactContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 948
    const-string v1, "ReactNative"

    const-string v2, "ReactInstanceManager.tearDownReactContext()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 950
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_0

    .line 951
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->onHostPause()V

    .line 954
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    monitor-enter v2

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactRootView;

    .line 956
    .local v0, "rootView":Lcom/facebook/react/ReactRootView;
    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    .line 957
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/facebook/react/ReactRootView;->setId(I)V

    goto :goto_0

    .line 959
    .end local v0    # "rootView":Lcom/facebook/react/ReactRootView;
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

    .line 961
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->destroy()V

    .line 962
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V

    .line 963
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/MemoryPressureRouter;->removeMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V

    .line 964
    return-void
.end method

.method private toggleElementInspector()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 482
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "toggleElementInspector"

    const/4 v2, 0x0

    .line 483
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 729
    return-void
.end method

.method public attachRootView(Lcom/facebook/react/ReactRootView;)V
    .locals 1
    .param p1, "rootView"    # Lcom/facebook/react/ReactRootView;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 677
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    .line 681
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactRootView;->setId(I)V

    .line 685
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/ReactInstanceManager;->attachRootViewToInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 688
    :cond_0
    return-void
.end method

.method public createAllViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 6
    .param p1, "catalystApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 710
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 711
    const-string v2, "createAllViewManagers"

    invoke-static {v4, v5, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 713
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, "allViewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactPackage;

    .line 715
    .local v1, "reactPackage":Lcom/facebook/react/ReactPackage;
    invoke-interface {v1, p1}, Lcom/facebook/react/ReactPackage;->createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 719
    .end local v0    # "allViewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    .end local v1    # "reactPackage":Lcom/facebook/react/ReactPackage;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 720
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v2

    .line 719
    .restart local v0    # "allViewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    :cond_0
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 720
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_VIEW_MANAGERS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v0
.end method

.method public createReactContextInBackground()V
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 315
    const-string v0, "ReactNative"

    const-string v2, "ReactInstanceManager.createReactContextInBackground()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "createReactContextInBackground should only be called when creating the react application for the first time. When reloading JS, e.g. from a new file, explicitlyuse recreateReactContextInBackground"

    invoke-static {v0, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 322
    iput-boolean v1, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 323
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundInner()V

    .line 324
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 585
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 587
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeCreateLifecycleState()V

    .line 593
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 595
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCreateReactContextThread:Ljava/lang/Thread;

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/react/MemoryPressureRouter;->destroy(Landroid/content/Context;)V

    .line 600
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->destroy()V

    .line 602
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 603
    iput-boolean v3, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    .line 605
    :cond_2
    iput-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 607
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->clear()V

    .line 608
    return-void
.end method

.method public detachRootView(Lcom/facebook/react/ReactRootView;)V
    .locals 1
    .param p1, "rootView"    # Lcom/facebook/react/ReactRootView;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 698
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mAttachedRootViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/ReactInstanceManager;->detachViewFromInstance(Lcom/facebook/react/ReactRootView;Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 703
    :cond_0
    return-void
.end method

.method public getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object v0
.end method

.method public getLifecycleState()Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    return-object v0
.end method

.method public getMemoryPressureRouter()Lcom/facebook/react/MemoryPressureRouter;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMemoryPressureRouter:Lcom/facebook/react/MemoryPressureRouter;

    return-object v0
.end method

.method public getMinNumShakes()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/facebook/react/ReactInstanceManager;->mMinNumShakes:I

    return v0
.end method

.method public hasStartedCreatingInitialContext()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/bridge/ReactContext;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 658
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 436
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 437
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 438
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v2, :cond_0

    .line 440
    const-string v2, "ReactNative"

    const-string v3, "Instance detached from instance manager"

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->invokeDefaultOnBackPressed()V

    .line 447
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 445
    .local v0, "deviceEventManagerModule":Lcom/facebook/react/modules/core/DeviceEventManagerModule;
    invoke-virtual {v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->emitHardwareBackPressed()V

    goto :goto_0
.end method

.method public onHostDestroy()V
    .locals 2
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 558
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeCreateLifecycleState()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 564
    return-void
.end method

.method public onHostDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->onHostDestroy()V

    .line 578
    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 2
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 498
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->moveToBeforeResumeLifecycleState()V

    .line 503
    return-void
.end method

.method public onHostPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing an activity that is not the current activity, this is incorrect! Current activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 519
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Paused activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->onHostPause()V

    .line 522
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHostResume(Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "defaultBackButtonImpl"    # Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 537
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 539
    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager;->mDefaultBackButtonImpl:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 540
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mUseDeveloperSupport:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 544
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/ReactInstanceManager;->moveToResumedLifecycleState(Z)V

    .line 546
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 462
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v3, :cond_0

    .line 463
    const-string v3, "ReactNative"

    const-string v4, "Instance detached from instance manager"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 468
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 469
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 470
    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    const-class v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 471
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    .line 472
    .local v1, "deviceEventManagerModule":Lcom/facebook/react/modules/core/DeviceEventManagerModule;
    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->emitNewIntentReceived(Landroid/net/Uri;)V

    .line 475
    .end local v1    # "deviceEventManagerModule":Lcom/facebook/react/modules/core/DeviceEventManagerModule;
    :cond_1
    iget-object v3, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/facebook/react/bridge/ReactContext;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public recreateReactContextInBackground()V
    .locals 2
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/facebook/react/ReactInstanceManager;->mHasStartedCreatingInitialContext:Z

    const-string v1, "recreateReactContextInBackground should only be called after the initial createReactContextInBackground call."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackgroundInner()V

    .line 367
    return-void
.end method

.method public registerAdditionalPackages(Ljava/util/List;)V
    .locals 7
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/ReactPackage;

    .line 335
    .local v3, "p":Lcom/facebook/react/ReactPackage;
    iget-object v6, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 336
    iget-object v6, p0, Lcom/facebook/react/ReactInstanceManager;->mPackages:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    .end local v3    # "p":Lcom/facebook/react/ReactPackage;
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 343
    .local v1, "context":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    .line 345
    .local v0, "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    :goto_2
    const-string v5, "CatalystInstance null after hasStartedCreatingInitialContext true."

    invoke-static {v0, v5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    new-instance v4, Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v5, p0, Lcom/facebook/react/ReactInstanceManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;-><init>(Landroid/content/Context;)V

    .line 349
    .local v4, "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    const/4 v5, 0x1

    invoke-direct {p0, v4, p1, v5}, Lcom/facebook/react/ReactInstanceManager;->processPackages(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Z)Lcom/facebook/react/bridge/NativeModuleRegistry;

    move-result-object v2

    .line 350
    .local v2, "nativeModuleRegistry":Lcom/facebook/react/bridge/NativeModuleRegistry;
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/CatalystInstance;->extendNativeModules(Lcom/facebook/react/bridge/NativeModuleRegistry;)V

    goto :goto_0

    .line 343
    .end local v0    # "catalystInstance":Lcom/facebook/react/bridge/CatalystInstance;
    .end local v2    # "nativeModuleRegistry":Lcom/facebook/react/bridge/NativeModuleRegistry;
    .end local v4    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mReactInstanceEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 1
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 663
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->showDevOptionsDialog()V

    .line 664
    return-void
.end method
