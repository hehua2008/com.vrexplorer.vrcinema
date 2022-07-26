.class public Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfo;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNNetworkInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RNNetworkInfo"


# instance fields
.field wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfo;->wifi:Landroid/net/wifi/WifiManager;

    .line 29
    return-void
.end method


# virtual methods
.method public getBSSID(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfo;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public getIPAddress(Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 56
    const/4 v5, 0x0

    .line 59
    .local v5, "ipAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 61
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 63
    .local v3, "inetAddress":Ljava/net/InetAddress;
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "RNNetworkInfo"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "RNNetworkInfo"

    return-object v0
.end method

.method public getSSID(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNetworkInfo;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 41
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "ssid":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 47
    return-void
.end method
