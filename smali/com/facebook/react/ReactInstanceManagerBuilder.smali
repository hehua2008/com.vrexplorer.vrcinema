.class public Lcom/facebook/react/ReactInstanceManagerBuilder;
.super Ljava/lang/Object;
.source "ReactInstanceManagerBuilder.java"


# instance fields
.field protected mApplication:Landroid/app/Application;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mCurrentActivity:Landroid/app/Activity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mEnableSplitPackage:Z

.field protected mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mJSBundleAssetUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mJSCConfig:Lcom/facebook/react/JSCConfig;

.field protected mJSMainModuleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mLazyNativeModulesEnabled:Z

.field protected mLazyViewManagersEnabled:Z

.field protected mMinNumShakes:I

.field protected mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field protected mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mSetupReactContextInBackground:Z

.field protected mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mUseDeveloperSupport:Z

.field protected mUseSeparateUIBackgroundThread:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/facebook/react/JSCConfig;->EMPTY:Lcom/facebook/react/JSCConfig;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    .line 53
    return-void
.end method


# virtual methods
.method public addPackage(Lcom/facebook/react/ReactPackage;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1
    .param p1, "reactPackage"    # Lcom/facebook/react/ReactPackage;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method

.method public build()Lcom/facebook/react/ReactInstanceManager;
    .locals 22

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    const-string v2, "Application property has not been set with this builder"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "JS Bundle File or Asset URL has to be provided when dev support is disabled"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModuleName:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Either MainModuleName or JS Bundle File needs to be provided"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    if-nez v1, :cond_2

    .line 247
    new-instance v1, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 250
    :cond_2
    new-instance v1, Lcom/facebook/react/ReactInstanceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCurrentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    const/4 v7, 0x0

    .line 255
    invoke-static {v5, v6, v7}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModuleName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

    const-string v11, "Initial lifecycle state was not set"

    .line 261
    invoke-static {v10, v11}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/react/common/LifecycleState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyNativeModulesEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyViewManagersEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mSetupReactContextInBackground:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseSeparateUIBackgroundThread:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mEnableSplitPackage:Z

    move/from16 v21, v0

    invoke-direct/range {v1 .. v21}, Lcom/facebook/react/ReactInstanceManager;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/lang/String;Ljava/util/List;ZLcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;Lcom/facebook/react/common/LifecycleState;Lcom/facebook/react/uimanager/UIImplementationProvider;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;Lcom/facebook/react/JSCConfig;Lcom/facebook/react/devsupport/RedBoxHandler;ZZLcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ZZIZ)V

    return-object v1

    .line 237
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 241
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    goto :goto_2
.end method

.method public setApplication(Landroid/app/Application;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    .line 130
    return-object p0
.end method

.method public setBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "bridgeIdleDebugListener"    # Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    .line 122
    return-object p0
.end method

.method public setBundleAssetName(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 3
    .param p1, "bundleAssetName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 72
    return-object p0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCurrentActivity:Landroid/app/Activity;

    .line 135
    return-object p0
.end method

.method public setDefaultHardwareBackBtnHandler(Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "defaultHardwareBackBtnHandler"    # Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 141
    return-object p0
.end method

.method public setDevBundleDownloadListener(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 197
    return-object p0
.end method

.method public setEnableSplitPackage(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "enableSplitPackage"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mEnableSplitPackage:Z

    .line 219
    return-object p0
.end method

.method public setInitialLifecycleState(Lcom/facebook/react/common/LifecycleState;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "initialLifecycleState"    # Lcom/facebook/react/common/LifecycleState;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 161
    return-object p0
.end method

.method public setJSBundleFile(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1
    .param p1, "jsBundleFile"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "assets://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 86
    .end local p0    # "this":Lcom/facebook/react/ReactInstanceManagerBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/facebook/react/ReactInstanceManagerBuilder;
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1
    .param p1, "jsBundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setJSCConfig(Lcom/facebook/react/JSCConfig;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "jscConfig"    # Lcom/facebook/react/JSCConfig;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSCConfig:Lcom/facebook/react/JSCConfig;

    .line 177
    return-object p0
.end method

.method public setJSMainModuleName(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "jsMainModuleName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModuleName:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setLazyNativeModulesEnabled(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "lazyNativeModulesEnabled"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyNativeModulesEnabled:Z

    .line 187
    return-object p0
.end method

.method public setLazyViewManagersEnabled(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "lazyViewManagersEnabled"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyViewManagersEnabled:Z

    .line 192
    return-object p0
.end method

.method public setMinNumShakes(I)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "minNumShakes"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    .line 214
    return-object p0
.end method

.method public setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "handler"    # Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 172
    return-object p0
.end method

.method public setRedBoxHandler(Lcom/facebook/react/devsupport/RedBoxHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "redBoxHandler"    # Lcom/facebook/react/devsupport/RedBoxHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    .line 182
    return-object p0
.end method

.method public setSetupReactContextInBackgroundEnabled(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "setupReactContextInBackground"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mSetupReactContextInBackground:Z

    .line 203
    return-object p0
.end method

.method public setUIImplementationProvider(Lcom/facebook/react/uimanager/UIImplementationProvider;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 62
    return-object p0
.end method

.method public setUseDeveloperSupport(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "useDeveloperSupport"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    .line 151
    return-object p0
.end method

.method public setUseSeparateUIBackgroundThread(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .param p1, "useSeparateUIBackgroundThread"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseSeparateUIBackgroundThread:Z

    .line 209
    return-object p0
.end method
