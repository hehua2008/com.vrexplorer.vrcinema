.class public Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UmengModule.java"


# static fields
.field private static startedWithAppkey:Ljava/lang/Boolean;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->startedWithAppkey:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static mGetDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v2, "json":Lorg/json/JSONObject;
    const-string v6, "phone"

    .line 158
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 160
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 162
    .local v0, "device_id":Ljava/lang/String;
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v6}, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 169
    .local v5, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "mac":Ljava/lang/String;
    const-string v6, "mac"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    move-object v0, v3

    .line 178
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2
    const-string v6, "device_id"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 190
    .end local v0    # "device_id":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v6

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableEncrypt(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public getDeviceInfo(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "dataCallBack"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->mGetDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "infoStr":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Umeng"

    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "dataMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "counter"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 83
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v3

    .line 85
    .local v3, "readableMapKeySetIterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "aKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "aValue":Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    .end local v0    # "aKey":Ljava/lang/String;
    .end local v1    # "aValue":Ljava/lang/String;
    .end local v3    # "readableMapKeySetIterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_0
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 93
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, p1, v2, v5}, Lcom/umeng/analytics/MobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 100
    :goto_1
    return-void

    .line 94
    :cond_1
    if-eqz v2, :cond_2

    .line 95
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {v4, p1, v2}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPageEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onPageEnd(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onPageStart(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onPause(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "Provider"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-static {p2, p1}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProfileSignOff()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignOff()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/UmengModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->onResume(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public openActivityDurationTrack(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;->openActivityDurationTrack(Z)V

    .line 105
    return-void
.end method

.method public setCrashReportEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setCatchUncaughtExceptions(Z)V

    .line 49
    return-void
.end method

.method public setDebugMode(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 120
    return-void
.end method

.method public setLogEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 125
    return-void
.end method

.method public startWithAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public startWithAppkeyAndChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 44
    return-void
.end method
