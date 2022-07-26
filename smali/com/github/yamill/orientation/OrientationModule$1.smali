.class Lcom/github/yamill/orientation/OrientationModule$1;
.super Landroid/content/BroadcastReceiver;
.source "OrientationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/yamill/orientation/OrientationModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/yamill/orientation/OrientationModule;

.field final synthetic val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/github/yamill/orientation/OrientationModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/yamill/orientation/OrientationModule;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/github/yamill/orientation/OrientationModule$1;->this$0:Lcom/github/yamill/orientation/OrientationModule;

    iput-object p2, p0, Lcom/github/yamill/orientation/OrientationModule$1;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v3, "newConfig"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 39
    .local v0, "newConfig":Landroid/content/res/Configuration;
    const-string v3, "receiver"

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v1, "PORTRAIT"

    .line 43
    .local v1, "orientationValue":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 44
    .local v2, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "orientation"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/github/yamill/orientation/OrientationModule$1;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/github/yamill/orientation/OrientationModule$1;->val$ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 47
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v4, "orientationDidChange"

    .line 48
    invoke-interface {v3, v4, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void

    .line 41
    .end local v1    # "orientationValue":Ljava/lang/String;
    .end local v2    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    const-string v1, "LANDSCAPE"

    goto :goto_0
.end method
