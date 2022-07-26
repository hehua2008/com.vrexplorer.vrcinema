.class public Lcom/rockvr/moonplayer_gvr/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    new-instance v0, Lcom/rockvr/moonplayer_gvr/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/rockvr/moonplayer_gvr/MainApplication$1;-><init>(Lcom/rockvr/moonplayer_gvr/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 90
    const-string v0, "58170631c62dca72d0000ef3"

    invoke-static {p0}, Lcom/mcxiaoke/packer/helper/PackerNg;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->startWithAppKeyAndChannelId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 95
    return-void
.end method
