.class public Lcom/facebook/react/ReactNativeCorePackage;
.super Lcom/facebook/react/LazyReactPackage;
.source "ReactNativeCorePackage.java"


# instance fields
.field private final mLazyViewManagersEnabled:Z

.field private final mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field private final mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V
    .locals 0
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p3, "lazyViewManagersEnabled"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/react/ReactNativeCorePackage;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 52
    iput-object p2, p0, Lcom/facebook/react/ReactNativeCorePackage;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 53
    iput-boolean p3, p0, Lcom/facebook/react/ReactNativeCorePackage;->mLazyViewManagersEnabled:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactNativeCorePackage;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/ReactNativeCorePackage;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactNativeCorePackage;->createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object v0

    return-object v0
.end method

.method private createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 6
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    const-wide/16 v4, 0x0

    .line 80
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 81
    const-string v1, "createUIManagerModule"

    invoke-static {v4, v5, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactNativeCorePackage;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v1, p1}, Lcom/facebook/react/ReactInstanceManager;->createAllViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v1, Lcom/facebook/react/uimanager/UIManagerModule;

    iget-object v2, p0, Lcom/facebook/react/ReactNativeCorePackage;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    iget-boolean v3, p0, Lcom/facebook/react/ReactNativeCorePackage;->mLazyViewManagersEnabled:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 92
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v1

    .line 91
    .end local v0    # "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 92
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v1
.end method


# virtual methods
.method public getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "moduleSpecList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    new-instance v3, Lcom/facebook/react/ReactNativeCorePackage$1;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/ReactNativeCorePackage$1;-><init>(Lcom/facebook/react/ReactNativeCorePackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .prologue
    .line 74
    .line 75
    invoke-static {p0}, Lcom/facebook/react/LazyReactPackage;->getReactModuleInfoProviderViaReflection(Lcom/facebook/react/LazyReactPackage;)Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    .line 76
    .local v0, "reactModuleInfoProvider":Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    return-object v0
.end method
