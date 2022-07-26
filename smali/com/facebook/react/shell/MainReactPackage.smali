.class public Lcom/facebook/react/shell/MainReactPackage;
.super Lcom/facebook/react/LazyReactPackage;
.source "MainReactPackage.java"


# instance fields
.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/facebook/react/shell/MainPackageConfig;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/shell/MainReactPackage;)Lcom/facebook/react/shell/MainPackageConfig;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/shell/MainReactPackage;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-object v0
.end method


# virtual methods
.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
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
    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTGroupViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTShapeViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTTextViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v3, Lcom/facebook/react/views/picker/ReactDialogPickerManager;

    invoke-direct {v3}, Lcom/facebook/react/views/picker/ReactDialogPickerManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;

    invoke-direct {v3}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v3, Lcom/facebook/react/views/picker/ReactDropdownPickerManager;

    invoke-direct {v3}, Lcom/facebook/react/views/picker/ReactDropdownPickerManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v3, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v3, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v3, Lcom/facebook/react/views/scroll/ReactScrollViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Lcom/facebook/react/views/slider/ReactSliderManager;

    invoke-direct {v3}, Lcom/facebook/react/views/slider/ReactSliderManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/facebook/react/views/switchview/ReactSwitchManager;

    invoke-direct {v3}, Lcom/facebook/react/views/switchview/ReactSwitchManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v3, Lcom/facebook/react/views/toolbar/ReactToolbarManager;

    invoke-direct {v3}, Lcom/facebook/react/views/toolbar/ReactToolbarManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v3, Lcom/facebook/react/views/webview/ReactWebViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/webview/ReactWebViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v3, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;

    invoke-direct {v3}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "flat_uiimplementation"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    .local v1, "useFlatUi":Z
    if-eqz v1, :cond_0

    .line 273
    new-instance v3, Lcom/facebook/react/flat/FlatARTSurfaceViewManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/FlatARTSurfaceViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v3, Lcom/facebook/react/flat/RCTTextInlineImageManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTTextInlineImageManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Lcom/facebook/react/flat/RCTImageViewManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTImageViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v3, Lcom/facebook/react/flat/RCTModalHostManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTModalHostManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v3, Lcom/facebook/react/flat/RCTRawTextManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTRawTextManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v3, Lcom/facebook/react/flat/RCTTextInputManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTTextInputManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v3, Lcom/facebook/react/flat/RCTTextManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTTextManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v3, Lcom/facebook/react/flat/RCTViewManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v3, Lcom/facebook/react/flat/RCTViewPagerManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTViewPagerManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v3, Lcom/facebook/react/flat/RCTVirtualTextManager;

    invoke-direct {v3}, Lcom/facebook/react/flat/RCTVirtualTextManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_0
    return-object v2

    .line 285
    :cond_0
    new-instance v3, Lcom/facebook/react/views/art/ARTSurfaceViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v3, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v3, Lcom/facebook/react/views/image/ReactImageManager;

    invoke-direct {v3}, Lcom/facebook/react/views/image/ReactImageManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v3, Lcom/facebook/react/views/modal/ReactModalHostManager;

    invoke-direct {v3}, Lcom/facebook/react/views/modal/ReactModalHostManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v3, Lcom/facebook/react/views/text/ReactRawTextManager;

    invoke-direct {v3}, Lcom/facebook/react/views/text/ReactRawTextManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v3, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-direct {v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v3, Lcom/facebook/react/views/text/ReactTextViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/text/ReactTextViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v3, Lcom/facebook/react/views/view/ReactViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v3, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;

    invoke-direct {v3}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v3, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;

    invoke-direct {v3}, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
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
    .line 103
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/facebook/react/bridge/ModuleSpec;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$1;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$1;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/appstate/AppStateModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$2;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$2;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/storage/AsyncStorageModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$3;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$3;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/camera/CameraRollManager;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$4;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$4;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/clipboard/ClipboardModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$5;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$5;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$6;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$6;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/dialog/DialogModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$7;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$7;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/fresco/FrescoModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$8;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$8;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$9;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$9;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/camera/ImageEditingManager;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$10;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$10;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/image/ImageLoaderModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$11;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$11;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/camera/ImageStoreManager;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$12;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$12;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/intent/IntentModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$13;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$13;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/location/LocationModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$14;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$14;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/animated/NativeAnimatedModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$15;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$15;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/network/NetworkingModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$16;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$16;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/netinfo/NetInfoModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$17;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$17;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/permissions/PermissionsModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$18;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$18;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/share/ShareModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$19;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$19;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/statusbar/StatusBarModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$20;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$20;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$21;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$21;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/toast/ToastModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$22;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$22;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/vibration/VibrationModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$23;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$23;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/facebook/react/bridge/ModuleSpec;

    const-class v3, Lcom/facebook/react/modules/websocket/WebSocketModule;

    new-instance v4, Lcom/facebook/react/shell/MainReactPackage$24;

    invoke-direct {v4, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$24;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/bridge/ModuleSpec;-><init>(Ljava/lang/Class;Ljavax/inject/Provider;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .prologue
    .line 303
    invoke-static {p0}, Lcom/facebook/react/LazyReactPackage;->getReactModuleInfoProviderViaReflection(Lcom/facebook/react/LazyReactPackage;)Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    return-object v0
.end method