.class Lcom/rockvr/moonplayer_gvr/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/MainApplication;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/MainApplication;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/MainApplication;
    .param p2, "x0"    # Landroid/app/Application;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/MainApplication$1;->this$0:Lcom/rockvr/moonplayer_gvr/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/facebook/react/ReactPackage;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    invoke-direct {v2}, Lcom/facebook/react/shell/MainReactPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/tradle/react/UdpSocketsModule;

    invoke-direct {v2}, Lcom/tradle/react/UdpSocketsModule;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/babisoft/ReactNativeLocalization/ReactNativeLocalizationPackage;

    invoke-direct {v2}, Lcom/babisoft/ReactNativeLocalization/ReactNativeLocalizationPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/BV/LinearGradient/LinearGradientPackage;

    invoke-direct {v2}, Lcom/BV/LinearGradient/LinearGradientPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/rnfs/RNFSPackage;

    invoke-direct {v2}, Lcom/rnfs/RNFSPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/github/yamill/orientation/OrientationPackage;

    invoke-direct {v2}, Lcom/github/yamill/orientation/OrientationPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfoPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfoPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOSPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOSPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/pgsqlite/SQLitePluginPackage;

    invoke-direct {v2}, Lorg/pgsqlite/SQLitePluginPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoServicePackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNVideoServicePackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtilPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtilPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
