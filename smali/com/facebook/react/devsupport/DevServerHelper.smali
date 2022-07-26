.class public Lcom/facebook/react/devsupport/DevServerHelper;
.super Ljava/lang/Object;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;,
        Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;,
        Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_URL_FORMAT:Ljava/lang/String; = "http://%s/%s.bundle?platform=android&dev=%s&hot=%s&minify=%s"

.field private static final HEAP_CAPTURE_UPLOAD_URL_FORMAT:Ljava/lang/String; = "http://%s/jscheapcaptureupload"

.field private static final HTTP_CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final INSPECTOR_DEVICE_URL_FORMAT:Ljava/lang/String; = "http://%s/inspector/device?name=%s"

.field private static final LAUNCH_JS_DEVTOOLS_COMMAND_URL_FORMAT:Ljava/lang/String; = "http://%s/launch-js-devtools"

.field private static final LONG_POLL_FAILURE_DELAY_MS:I = 0x1388

.field private static final LONG_POLL_KEEP_ALIVE_DURATION_MS:I = 0x1d4c0

.field private static final ONCHANGE_ENDPOINT_URL_FORMAT:Ljava/lang/String; = "http://%s/onchange"

.field private static final OPEN_STACK_FRAME_URL_FORMAT:Ljava/lang/String; = "http://%s/open-stack-frame"

.field private static final PACKAGER_OK_STATUS:Ljava/lang/String; = "packager-status:running"

.field private static final PACKAGER_STATUS_URL_FORMAT:Ljava/lang/String; = "http://%s/status"

.field private static final RELOAD_APP_ACTION_SUFFIX:Ljava/lang/String; = ".RELOAD_APP_ACTION"

.field public static final RELOAD_APP_EXTRA_JS_PROXY:Ljava/lang/String; = "jsproxy"

.field private static final RESOURCE_URL_FORMAT:Ljava/lang/String; = "http://%s/%s"

.field private static final SOURCE_MAP_URL_FORMAT:Ljava/lang/String;

.field private static final SYMBOLICATE_URL_FORMAT:Ljava/lang/String; = "http://%s/symbolicate"

.field private static final WEBSOCKET_PROXY_URL_FORMAT:Ljava/lang/String; = "ws://%s/debugger-proxy?role=client"


# instance fields
.field private final mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

.field private final mClient:Lokhttp3/OkHttpClient;

.field private mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnChangePollingClient:Lokhttp3/OkHttpClient;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnChangePollingEnabled:Z

.field private mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRestartOnChangePollingHandler:Landroid/os/Handler;

.field private final mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "http://%s/%s.bundle?platform=android&dev=%s&hot=%s&minify=%s"

    const-string v1, "\\.bundle"

    const-string v2, ".map"

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/DevServerHelper;->SOURCE_MAP_URL_FORMAT:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/devsupport/DevInternalSettings;)V
    .locals 6
    .param p1, "settings"    # Lcom/facebook/react/devsupport/DevInternalSettings;

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 121
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 124
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    .line 126
    new-instance v0, Lcom/facebook/react/devsupport/BundleDownloader;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/facebook/react/devsupport/BundleDownloader;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/packagerconnection/JSPackagerClient;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/packagerconnection/JSPackagerClient;)Lcom/facebook/react/packagerconnection/JSPackagerClient;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;
    .param p1, "x1"    # Lcom/facebook/react/packagerconnection/JSPackagerClient;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/InspectorPackagerConnection;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;
    .param p1, "x1"    # Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/DevServerHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/DevServerHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->handleOnChangePollingResponse(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/DevServerHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static createBundleURL(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "jsModulePath"    # Ljava/lang/String;
    .param p2, "devMode"    # Z
    .param p3, "hmr"    # Z
    .param p4, "jsMinify"    # Z

    .prologue
    .line 367
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/%s.bundle?platform=android&dev=%s&hot=%s&minify=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createLaunchJSDevtoolsCommandUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 520
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/launch-js-devtools"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 523
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 520
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOnChangeEndpointUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 513
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/onchange"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 516
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 513
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createOpenStackFrameURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 379
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/open-stack-frame"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createPackagerStatusURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 440
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/status"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createResourceURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 371
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createSymbolicateURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 375
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/symbolicate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enqueueOnChangeEndpointLongPolling()V
    .locals 3

    .prologue
    .line 485
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->createOnChangeEndpointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 486
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevServerHelper$9;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevServerHelper$9;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 510
    return-void
.end method

.method private getDevMode()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSDevModeEnabled()Z

    move-result v0

    return v0
.end method

.method private getHMR()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    return v0
.end method

.method private getHostForJSProxy()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 331
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "host":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 333
    .local v1, "portOffset":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localhost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "localhost"

    goto :goto_0
.end method

.method private getJSMinifyMode()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isJSMinifyEnabled()Z

    move-result v0

    return v0
.end method

.method public static getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".RELOAD_APP_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOnChangePollingResponse(Z)V
    .locals 1
    .param p1, "didServerContentChanged"    # Z

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    if-eqz v0, :cond_1

    .line 470
    if-eqz p1, :cond_0

    .line 471
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$8;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$8;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->enqueueOnChangeEndpointLongPolling()V

    .line 482
    :cond_1
    return-void
.end method


# virtual methods
.method public closeInspectorConnection()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$4;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$4;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void
.end method

.method public closePackagerConnection()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$2;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p1, "resourcePath"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 587
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 588
    invoke-virtual {v6}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v6

    .line 587
    invoke-static {v6, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->createResourceURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "resourceURL":Ljava/lang/String;
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 591
    invoke-virtual {v6, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 592
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 595
    .local v2, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 596
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    move-object p2, v5

    .line 618
    .end local v4    # "response":Lokhttp3/Response;
    .end local p2    # "outputFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p2

    .line 599
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local p2    # "outputFile":Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    .line 602
    .local v1, "output":Lokio/Sink;
    :try_start_1
    invoke-static {p2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    .line 603
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    invoke-interface {v6, v1}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    if-eqz v1, :cond_0

    .line 606
    :try_start_2
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 611
    .end local v1    # "output":Lokio/Sink;
    .end local v4    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "ReactNative"

    const-string v7, "Failed to fetch resource synchronously - resourcePath: \"%s\", outputFile: \"%s\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    .line 616
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    .line 612
    invoke-static {v6, v7, v8}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v5

    .line 618
    goto :goto_0

    .line 605
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "output":Lokio/Sink;
    .restart local v4    # "response":Lokhttp3/Response;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_2

    .line 606
    :try_start_3
    invoke-interface {v1}, Lokio/Sink;->close()V

    :cond_2
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public getBundleDownloader()Lcom/facebook/react/devsupport/BundleDownloader;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mBundleDownloader:Lcom/facebook/react/devsupport/BundleDownloader;

    return-object v0
.end method

.method public getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "jsModulePath"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 384
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevMode()Z

    move-result v1

    .line 387
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHMR()Z

    move-result v2

    .line 388
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSMinifyMode()Z

    move-result v3

    .line 383
    invoke-static {v0, p1, v1, v2, v3}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeapCaptureUploadUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 307
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/jscheapcaptureupload"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 310
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 307
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspectorDeviceUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 314
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/inspector/device?name=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 317
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getInspectorServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 318
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getFriendlyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 314
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mainModuleName"    # Ljava/lang/String;

    .prologue
    .line 570
    .line 571
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHostForJSProxy()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevMode()Z

    move-result v1

    .line 574
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHMR()Z

    move-result v2

    .line 575
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSMinifyMode()Z

    move-result v3

    .line 570
    invoke-static {v0, p1, v1, v2, v3}, Lcom/facebook/react/devsupport/DevServerHelper;->createBundleURL(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mainModuleName"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/facebook/react/devsupport/DevServerHelper;->SOURCE_MAP_URL_FORMAT:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 548
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    .line 550
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 551
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHMR()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 552
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSMinifyMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 545
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mainModuleName"    # Ljava/lang/String;

    .prologue
    .line 556
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s/%s.bundle?platform=android&dev=%s&hot=%s&minify=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 559
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    .line 561
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 562
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getHMR()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 563
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSMinifyMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 556
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebsocketProxyURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 300
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ws://%s/debugger-proxy?role=client"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 303
    invoke-virtual {v4}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 300
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 393
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v2}, Lcom/facebook/react/devsupport/DevServerHelper;->createPackagerStatusURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "statusURL":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 395
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 398
    .local v0, "request":Lokhttp3/Request;
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevServerHelper$7;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$7;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 437
    return-void
.end method

.method public launchJSDevtools()V
    .locals 3

    .prologue
    .line 527
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 528
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->createLaunchJSDevtoolsCommandUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 530
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevServerHelper$10;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevServerHelper$10;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 542
    return-void
.end method

.method public openInspector(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendOpenEvent(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public openInspectorConnection()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "ReactNative"

    const-string v1, "Inspector connection already open, nooping."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevServerHelper$3;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "commandListener"    # Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mPackagerClient:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "ReactNative"

    const-string v1, "Packager connection already open, nooping."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/react/devsupport/DevServerHelper$1;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public openStackFrameCall(Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 6
    .param p1, "stackFrame"    # Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .prologue
    .line 270
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 271
    invoke-virtual {v3}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/facebook/react/devsupport/DevServerHelper;->createOpenStackFrameURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "openStackFrameURL":Ljava/lang/String;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 273
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "application/json"

    .line 275
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 276
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 278
    .local v1, "request":Lokhttp3/Request;
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    .line 279
    .local v2, "symbolicateCall":Lokhttp3/Call;
    new-instance v3, Lcom/facebook/react/devsupport/DevServerHelper$6;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevServerHelper$6;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 292
    return-void
.end method

.method public startPollingOnChangeEndpoint(Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;)V
    .locals 6
    .param p1, "onServerContentChangeListener"    # Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    .prologue
    const/4 v5, 0x1

    .line 455
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    .line 460
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    .line 461
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/ConnectionPool;

    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v5, v2, v3, v4}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 462
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 463
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    .line 465
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevServerHelper;->enqueueOnChangeEndpointLongPolling()V

    goto :goto_0
.end method

.method public stopPollingOnChangeEndpoint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingEnabled:Z

    .line 445
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mRestartOnChangePollingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    invoke-static {v0, p0}, Lcom/facebook/react/common/network/OkHttpCallUtil;->cancelTag(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V

    .line 448
    iput-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnChangePollingClient:Lokhttp3/OkHttpClient;

    .line 450
    :cond_0
    iput-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mOnServerContentChangeListener:Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    .line 451
    return-void
.end method

.method public symbolicateStackTrace(Ljava/lang/Iterable;Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;)V
    .locals 10
    .param p2, "listener"    # Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;",
            "Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "stackFrames":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/devsupport/interfaces/StackFrame;>;"
    :try_start_0
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 230
    invoke-virtual {v6}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-static {v6}, Lcom/facebook/react/devsupport/DevServerHelper;->createSymbolicateURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "symbolicateURL":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 232
    .local v1, "jsonStackFrames":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 233
    .local v3, "stackFrame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    invoke-interface {v3}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v1    # "jsonStackFrames":Lorg/json/JSONArray;
    .end local v3    # "stackFrame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .end local v5    # "symbolicateURL":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "ReactNative"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got JSONException when attempting symbolicate stack trace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-static {v6, v7}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 235
    .restart local v1    # "jsonStackFrames":Lorg/json/JSONArray;
    .restart local v5    # "symbolicateURL":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 236
    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v7, "application/json"

    .line 238
    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "stack"

    .line 239
    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v7, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 240
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 241
    .local v2, "request":Lokhttp3/Request;
    iget-object v6, p0, Lcom/facebook/react/devsupport/DevServerHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/Call;

    .line 242
    .local v4, "symbolicateCall":Lokhttp3/Call;
    new-instance v6, Lcom/facebook/react/devsupport/DevServerHelper$5;

    invoke-direct {v6, p0, p2}, Lcom/facebook/react/devsupport/DevServerHelper$5;-><init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/DevServerHelper$SymbolicationListener;)V

    invoke-interface {v4, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
