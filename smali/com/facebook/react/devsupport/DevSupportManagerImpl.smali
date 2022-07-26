.class public Lcom/facebook/react/devsupport/DevSupportManagerImpl;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
.implements Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;
.implements Lcom/facebook/react/devsupport/DevInternalSettings$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;,
        Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;
    }
.end annotation


# static fields
.field private static final EXOPACKAGE_LOCATION_FORMAT:Ljava/lang/String; = "/data/local/tmp/exopackage/%s//secondary-dex"

.field private static final JAVA_ERROR_COOKIE:I = -0x1

.field private static final JSEXCEPTION_ERROR_COOKIE:I = -0x1

.field private static final JS_BUNDLE_FILE_NAME:Ljava/lang/String; = "ReactNativeDevBundle.js"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentContext:Lcom/facebook/react/bridge/ReactContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomDevOptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

.field private final mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

.field private mDevLoadingViewVisible:Z

.field private mDevOptionsDialog:Landroid/app/AlertDialog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

.field private mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

.field private mIsDevSupportEnabled:Z

.field private mIsReceiverRegistered:Z

.field private mIsShakeDetectorStarted:Z

.field private final mJSAppBundleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJSBundleTempFile:Ljava/io/File;

.field private mLastErrorCookie:I

.field private mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastErrorTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastErrorType:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReactInstanceCommandsHandler:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

.field private mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mShakeDetector:Lcom/facebook/react/common/ShakeDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactInstanceCommandsHandler"    # Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "enableOnCreate"    # Z
    .param p5, "minNumShakes"    # I

    .prologue
    const/4 v5, 0x0

    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;I)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactInstanceCommandsHandler"    # Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "enableOnCreate"    # Z
    .param p5, "redBoxHandler"    # Lcom/facebook/react/devsupport/RedBoxHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "devBundleDownloadListener"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "minNumShakes"    # I

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    .line 126
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewVisible:Z

    .line 129
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsReceiverRegistered:Z

    .line 130
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsShakeDetectorStarted:Z

    .line 131
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    .line 135
    iput v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorCookie:I

    .line 196
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReactInstanceCommandsHandler:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    .line 197
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    .line 198
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/devsupport/DevInternalSettings;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevInternalSettings$Listener;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 200
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-direct {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;-><init>(Lcom/facebook/react/devsupport/DevInternalSettings;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 201
    iput-object p6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 204
    new-instance v0, Lcom/facebook/react/common/ShakeDetector;

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    invoke-direct {v0, v1, p7}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    .line 212
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ReactNativeDevBundle.js"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    .line 235
    new-instance v0, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-direct {v0}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    .line 237
    invoke-virtual {p0, p4}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->setDevSupportEnabled(Z)V

    .line 239
    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    .line 240
    new-instance v0, Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-direct {v0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Lcom/facebook/react/packagerconnection/Responder;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/bridge/ReactContext;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Lcom/facebook/react/common/futures/SimpleSettableFuture;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevLoadingViewController;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewVisible:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorCookie:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/RedBoxHandler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReactInstanceCommandsHandler:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->handlePokeSamplingProfiler()V

    return-void
.end method

.method static synthetic access$902(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/common/futures/SimpleSettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "future":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$22;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$22;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/common/futures/SimpleSettableFuture;)V

    return-object v0
.end method

.method private handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 3
    .param p1, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .prologue
    .line 732
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/devsupport/JSCHeapCapture;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSCHeapCapture;

    .line 736
    .local v0, "heapCapture":Lcom/facebook/react/devsupport/JSCHeapCapture;
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerImpl$20;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$20;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/packagerconnection/Responder;)V

    .line 736
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/JSCHeapCapture;->captureHeap(Ljava/lang/String;Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureCallback;)V

    goto :goto_0
.end method

.method private handlePokeSamplingProfiler()V
    .locals 8

    .prologue
    .line 753
    const-wide/32 v4, 0xea60

    :try_start_0
    invoke-static {v4, v5}, Lcom/facebook/react/devsupport/JSCSamplingProfiler;->poke(J)Ljava/util/List;

    move-result-object v1

    .line 754
    .local v1, "pokeResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 755
    .local v2, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v2, :cond_1

    const-string v3, "Started JSC Sampling Profiler"

    :goto_1
    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 760
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 761
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;-><init>(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerImpl$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$JscProfileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/facebook/react/devsupport/JSCSamplingProfiler$ProfilerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    .end local v1    # "pokeResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Lcom/facebook/react/devsupport/JSCSamplingProfiler$ProfilerException;
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/JSCSamplingProfiler$ProfilerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    .end local v0    # "e":Lcom/facebook/react/devsupport/JSCSamplingProfiler$ProfilerException;
    :cond_0
    return-void

    .line 755
    .restart local v1    # "pokeResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "Stopped JSC Sampling Profiler"
    :try_end_1
    .catch Lcom/facebook/react/devsupport/JSCSamplingProfiler$ProfilerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private reload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    if-eqz v1, :cond_5

    .line 892
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 897
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsShakeDetectorStarted:Z

    if-nez v1, :cond_1

    .line 898
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    const-string v3, "sensor"

    .line 899
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 898
    invoke-virtual {v2, v1}, Lcom/facebook/react/common/ShakeDetector;->start(Landroid/hardware/SensorManager;)V

    .line 900
    iput-boolean v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsShakeDetectorStarted:Z

    .line 904
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsReceiverRegistered:Z

    if-nez v1, :cond_2

    .line 905
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 906
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 908
    iput-boolean v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsReceiverRegistered:Z

    .line 912
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewVisible:Z

    if-eqz v1, :cond_3

    .line 913
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->show()V

    .line 916
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/facebook/react/devsupport/DevServerHelper;->openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V

    .line 917
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->openInspectorConnection()V

    .line 918
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isReloadOnJSChangeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 919
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$24;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->startPollingOnChangeEndpoint(Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;)V

    .line 964
    :goto_0
    return-void

    .line 927
    :cond_4
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->stopPollingOnChangeEndpoint()V

    goto :goto_0

    .line 931
    :cond_5
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v1, :cond_6

    .line 932
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    invoke-virtual {v1, v3}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 936
    :cond_6
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsShakeDetectorStarted:Z

    if-eqz v1, :cond_7

    .line 937
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    invoke-virtual {v1}, Lcom/facebook/react/common/ShakeDetector;->stop()V

    .line 938
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsShakeDetectorStarted:Z

    .line 942
    :cond_7
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_8

    .line 943
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 944
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsReceiverRegistered:Z

    .line 948
    :cond_8
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    if-eqz v1, :cond_9

    .line 949
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->dismiss()V

    .line 953
    :cond_9
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_a

    .line 954
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 958
    :cond_a
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->hide()V

    .line 960
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    .line 961
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V

    .line 962
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->stopPollingOnChangeEndpoint()V

    goto :goto_0
.end method

.method private reloadJSInProxyMode()V
    .locals 2

    .prologue
    .line 784
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevServerHelper;->launchJSDevtools()V

    .line 786
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$21;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 805
    .local v0, "factory":Lcom/facebook/react/bridge/JavaJSExecutor$Factory;
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mReactInstanceCommandsHandler:Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    .line 806
    return-void
.end method

.method private resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 7
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 601
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne v5, p1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 606
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    .line 609
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v5, :cond_1

    .line 610
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 612
    :cond_1
    if-eqz p1, :cond_2

    .line 613
    new-instance v5, Lcom/facebook/react/devsupport/DebugOverlayController;

    invoke-direct {v5, p1}, Lcom/facebook/react/devsupport/DebugOverlayController;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    .line 616
    :cond_2
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v5}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v5, :cond_3

    .line 618
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 619
    .local v4, "sourceUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 622
    .local v3, "port":I
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v6, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v5, v6}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/devsupport/HMRClient;

    const-string v6, "android"

    invoke-interface {v5, v6, v2, v1, v3}, Lcom/facebook/react/devsupport/HMRClient;->enable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "sourceUrl":Ljava/net/URL;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reloadSettings()V

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .param p3, "errorCookie"    # I
    .param p4, "errorType"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .prologue
    .line 333
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$4;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method private updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .param p3, "errorCookie"    # I
    .param p4, "errorType"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorTitle:Ljava/lang/String;

    .line 776
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 777
    iput p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorCookie:I

    .line 778
    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorType:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    .line 779
    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 1
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "optionHandler"    # Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "resourceURL"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    .line 541
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mLastErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 523
    const-string v0, ""

    .line 526
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 532
    const-string v0, ""

    .line 535
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 245
    iget-boolean v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 248
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_0
    instance-of v2, p1, Lcom/facebook/react/devsupport/JSException;

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "ReactNative"

    const-string v3, "Exception in native call from JS"

    invoke-static {v2, v3, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/facebook/react/devsupport/JSException;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/facebook/react/devsupport/JSException;->getStack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    const/4 v3, -0x1

    sget-object v4, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->JS:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V

    .line 265
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .line 260
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 263
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-virtual {v2, p1}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public handleReloadJS()V
    .locals 3

    .prologue
    .line 640
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 643
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->dismiss()V

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForRemoteJSEnabled()V

    .line 649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewVisible:Z

    .line 650
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reloadJSInProxyMode()V

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSAppBundleName:Ljava/lang/String;

    .line 653
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "bundleURL":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reloadJSFromServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasBundleInAssets(Ljava/lang/String;)Z
    .locals 5
    .param p1, "bundleAssetName"    # Ljava/lang/String;

    .prologue
    .line 587
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "assets":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 589
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    const/4 v3, 0x1

    .line 597
    .end local v0    # "assets":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return v3

    .line 588
    .restart local v0    # "assets":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v0    # "assets":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ReactNative"

    const-string v4, "Error while loading assets list"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 556
    iget-boolean v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    :try_start_0
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 560
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 561
    .local v3, "thisPackage":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 565
    new-instance v1, Ljava/io/File;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "/data/local/tmp/exopackage/%s//secondary-dex"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 566
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, "exopackageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 568
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 577
    .end local v1    # "exopackageDir":Ljava/io/File;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "thisPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "exopackageDir":Ljava/io/File;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "thisPackage":Landroid/content/pm/PackageInfo;
    :cond_1
    move v4, v5

    .line 568
    goto :goto_0

    .line 572
    .end local v1    # "exopackageDir":Ljava/io/File;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "thisPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ReactNative"

    const-string v6, "DevSupport is unable to get current app info"

    invoke-static {v4, v6}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v4, v5

    .line 577
    goto :goto_0
.end method

.method public hideRedboxDialog()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->dismiss()V

    .line 326
    :cond_0
    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    .line 661
    return-void
.end method

.method public onCaptureHeapCommand(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 1
    .param p1, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .prologue
    .line 702
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$18;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$18;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/packagerconnection/Responder;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method public onInternalSettingsChanged()V
    .locals 0

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reloadSettings()V

    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 509
    return-void
.end method

.method public onPackagerDevMenuCommand()V
    .locals 1

    .prologue
    .line 692
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$17;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$17;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public onPackagerReloadCommand()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$16;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$16;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public onPokeSamplingProfilerCommand(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 1
    .param p1, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .prologue
    .line 712
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/packagerconnection/Responder;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 729
    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne p1, v0, :cond_0

    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 518
    :cond_0
    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "bundleURL"    # Ljava/lang/String;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForUrl(Ljava/lang/String;)V

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevLoadingViewVisible:Z

    .line 834
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getBundleDownloader()Lcom/facebook/react/devsupport/BundleDownloader;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/react/devsupport/BundleDownloader;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public reloadSettings()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reload()V

    .line 634
    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0
    .param p1, "isDevSupportEnabled"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    .line 493
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->reload()V

    .line 494
    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 363
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mIsDevSupportEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 368
    .local v1, "options":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;>;"
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_reloadjs:I

    .line 369
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$5;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$5;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 368
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 376
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debugjs_off:I

    .line 377
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    :goto_1
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$6;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$6;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 375
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {}, Lcom/facebook/react/bridge/Inspector;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "Debug JS on-device (experimental)"

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$7;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$7;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 400
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isReloadOnJSChangeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_live_reload_off:I

    .line 401
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    :goto_2
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$8;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$8;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 399
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 410
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_module_replacement_off:I

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 412
    :goto_3
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 409
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_element_inspector:I

    .line 421
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$10;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 420
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 430
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor_off:I

    .line 431
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    :goto_4
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$11;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$11;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 429
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_poke_sampling_profiler:I

    .line 440
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$12;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$12;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 439
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_settings:I

    .line 448
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$13;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$13;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 447
    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 458
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 461
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v4, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 463
    .local v0, "optionHandlers":[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/facebook/react/devsupport/DevSupportManagerImpl$15;

    invoke-direct {v4, p0, v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$15;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 465
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerImpl$14;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$14;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)V

    .line 474
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    .line 481
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 482
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mDevOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 377
    .end local v0    # "optionHandlers":[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;
    :cond_4
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debugjs:I

    .line 378
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 401
    :cond_5
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_live_reload:I

    .line 402
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 411
    :cond_6
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_module_replacement:I

    .line 412
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 431
    :cond_7
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor:I

    .line 432
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "details"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "errorCookie"    # I

    .prologue
    .line 287
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->JS:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V

    .line 288
    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 269
    const-string v0, "ReactNative"

    const-string v1, "Exception in native call"

    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;->NATIVE:Lcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerImpl$ErrorType;)V

    .line 271
    return-void
.end method

.method public updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "details"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "errorCookie"    # I

    .prologue
    .line 295
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$3;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl$3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;ILcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method
