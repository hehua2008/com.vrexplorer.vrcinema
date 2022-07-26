.class public Lcom/github/yamill/orientation/OrientationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "OrientationModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# instance fields
.field final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 33
    move-object v0, p1

    .line 35
    .local v0, "ctx":Lcom/facebook/react/bridge/ReactApplicationContext;
    new-instance v1, Lcom/github/yamill/orientation/OrientationModule$1;

    invoke-direct {v1, p0, v0}, Lcom/github/yamill/orientation/OrientationModule$1;-><init>(Lcom/github/yamill/orientation/OrientationModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v1, p0, Lcom/github/yamill/orientation/OrientationModule;->receiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 53
    return-void
.end method

.method private getOrientationString(I)Ljava/lang/String;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 134
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 135
    const-string v0, "LANDSCAPE"

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 137
    const-string v0, "PORTRAIT"

    goto :goto_0

    .line 138
    :cond_1
    if-nez p1, :cond_2

    .line 139
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "constants":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 123
    .local v2, "orientationInt":I
    invoke-direct {p0, v2}, Lcom/github/yamill/orientation/OrientationModule;->getOrientationString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "orientation":Ljava/lang/String;
    const-string v3, "null"

    if-ne v1, v3, :cond_0

    .line 125
    const-string v3, "initialOrientation"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string v3, "initialOrientation"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Orientation"

    return-object v0
.end method

.method public getOrientation(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 64
    .local v1, "orientationInt":I
    invoke-direct {p0, v1}, Lcom/github/yamill/orientation/OrientationModule;->getOrientationString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "orientation":Ljava/lang/String;
    const-string v2, "null"

    if-ne v0, v2, :cond_0

    .line 67
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v0, v2, v5

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public lockToLandscape()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 85
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public lockToLandscapeLeft()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public lockToLandscapeRight()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public lockToPortrait()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onHostDestroy()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onHostPause()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/github/yamill/orientation/OrientationModule;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ReactNative"

    const-string v3, "receiver already unregistered"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHostResume()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 150
    const-string v1, "ReactNative"

    const-string v2, "no activity to register receiver"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/github/yamill/orientation/OrientationModule;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "onConfigurationChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unlockAllOrientations()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/github/yamill/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
