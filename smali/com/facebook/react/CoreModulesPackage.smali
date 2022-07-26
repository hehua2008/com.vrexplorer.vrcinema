.class Lcom/facebook/react/CoreModulesPackage;
.super Lcom/facebook/react/LazyReactPackage;
.source "CoreModulesPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackageLogger;


# instance fields
.field private final mHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

.field private final mLazyViewManagersEnabled:Z

.field private final mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field private final mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V
    .locals 0
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;
    .param p2, "hardwareBackBtnHandler"    # Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .param p3, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p4, "lazyViewManagersEnabled"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/react/CoreModulesPackage;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 86
    iput-object p2, p0, Lcom/facebook/react/CoreModulesPackage;->mHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 87
    iput-object p3, p0, Lcom/facebook/react/CoreModulesPackage;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 88
    iput-boolean p4, p0, Lcom/facebook/react/CoreModulesPackage;->mLazyViewManagersEnabled:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/CoreModulesPackage;)Lcom/facebook/react/ReactInstanceManager;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/CoreModulesPackage;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/react/CoreModulesPackage;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/CoreModulesPackage;)Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/CoreModulesPackage;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/react/CoreModulesPackage;->mHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/CoreModulesPackage;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/react/CoreModulesPackage;->createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object v0

    return-object v0
.end method

.method private createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 6
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    const-wide/16 v4, 0x0

    .line 195
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 196
    const-string v1, "createUIManagerModule"

    invoke-static {v4, v5, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/CoreModulesPackage;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v1, p1}, Lcom/facebook/react/ReactInstanceManager;->createAllViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v1, Lcom/facebook/react/uimanager/UIManagerModule;

    iget-object v2, p0, Lcom/facebook/react/CoreModulesPackage;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    iget-boolean v3, p0, Lcom/facebook/react/CoreModulesPackage;->mLazyViewManagersEnabled:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 207
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v1

    .line 206
    .end local v0    # "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 207
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    throw v1
.end method


# virtual methods
.method public endProcessPackage()V
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_CORE_REACT_PACKAGE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 219
    return-void
.end method

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
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "moduleSpecList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/systeminfo/AndroidInfoModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$1;

    invoke-direct {v3, p0}, Lcom/facebook/react/CoreModulesPackage$1;-><init>(Lcom/facebook/react/CoreModulesPackage;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/debug/AnimationsDebugModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$2;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$2;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$3;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$3;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/core/ExceptionsManagerModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$4;

    invoke-direct {v3, p0}, Lcom/facebook/react/CoreModulesPackage$4;-><init>(Lcom/facebook/react/CoreModulesPackage;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/core/HeadlessJsTaskSupportModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$5;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$5;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/debug/SourceCodeModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$6;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$6;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/core/Timing;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$7;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$7;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$8;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$8;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v2, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;

    new-instance v3, Lcom/facebook/react/CoreModulesPackage$9;

    invoke-direct {v3, p0, p1}, Lcom/facebook/react/CoreModulesPackage$9;-><init>(Lcom/facebook/react/CoreModulesPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lcom/facebook/react/LazyReactPackage;->getReactModuleInfoProviderViaReflection(Lcom/facebook/react/LazyReactPackage;)Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public startProcessPackage()V
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->PROCESS_CORE_REACT_PACKAGE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 214
    return-void
.end method
