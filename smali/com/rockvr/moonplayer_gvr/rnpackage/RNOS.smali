.class public final Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNOS.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RNOS"


# instance fields
.field final mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

.field final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 36
    const-string v0, "connectivity"

    .line 37
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 38
    new-instance v0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;-><init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$1;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    .line 40
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 41
    return-void
.end method

.method private getNetworkInterfaces()Landroid/os/Bundle;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v11, "ifaces":Landroid/os/Bundle;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v14

    .line 116
    .local v14, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 117
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    .line 118
    .local v9, "iface":Ljava/net/NetworkInterface;
    const-string v15, "00:00:00:00:00:00"

    .line 119
    .local v15, "mac":Ljava/lang/String;
    const/4 v13, 0x1

    .line 122
    .local v13, "internal":Z
    :try_start_0
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->isLoopback()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 129
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v16

    .line 131
    .local v16, "macBytes":[B
    if-eqz v16, :cond_3

    .line 132
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_2

    .line 134
    const-string v24, "%02X%s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v23, 0x0

    aget-byte v26, v16, v8

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v25, v23

    const/16 v26, 0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    const-string v23, ":"

    :goto_2
    aput-object v23, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 123
    .end local v8    # "i":I
    .end local v16    # "macBytes":[B
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v20

    .line 125
    .local v20, "se":Ljava/net/SocketException;
    invoke-virtual/range {v20 .. v20}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v20    # "se":Ljava/net/SocketException;
    .restart local v8    # "i":I
    .restart local v16    # "macBytes":[B
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    const-string v23, ""

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 143
    .end local v8    # "i":I
    .end local v16    # "macBytes":[B
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 144
    .local v2, "address":Ljava/net/InterfaceAddress;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v10, "ifaceInfo":Landroid/os/Bundle;
    const-string v23, "internal"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string v23, "mac"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    .line 152
    .local v12, "inet":Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "hostAddress":Ljava/lang/String;
    const-string v23, "%"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 154
    .local v6, "end":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v6, v0, :cond_4

    .line 155
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 157
    :cond_4
    const-string v23, "address"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    instance-of v0, v12, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 159
    const-string v23, "family"

    const-string v24, "IPv6"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v24, "scopeid"

    move-object/from16 v23, v12

    check-cast v23, Ljava/net/Inet6Address;

    invoke-virtual/range {v23 .. v23}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :goto_5
    const-string v17, ""

    .line 166
    .local v17, "netmask":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v18

    .line 167
    .local v18, "prefixLength":S
    instance-of v0, v12, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 168
    const/16 v23, -0x1

    rsub-int/lit8 v24, v18, 0x20

    shl-int v22, v23, v24

    .line 169
    .local v22, "value":I
    const-string v23, "%d.%d.%d.%d"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    shr-int/lit8 v27, v22, 0x18

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v24, v26

    const/16 v26, 0x1

    shr-int/lit8 v27, v22, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    .line 170
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v24, v26

    const/16 v26, 0x2

    shr-int/lit8 v27, v22, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v24, v26

    const/16 v26, 0x3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v24, v26

    .line 169
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 189
    .end local v22    # "value":I
    :cond_5
    const-string v23, "netmask"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, [Landroid/os/Bundle;

    move-object/from16 v3, v23

    check-cast v3, [Landroid/os/Bundle;

    .line 192
    .local v3, "bundles":[Landroid/os/Bundle;
    if-nez v3, :cond_c

    .line 193
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v3, v0, [Landroid/os/Bundle;

    .end local v3    # "bundles":[Landroid/os/Bundle;
    const/16 v23, 0x0

    aput-object v10, v3, v23

    .line 200
    .restart local v3    # "bundles":[Landroid/os/Bundle;
    :goto_6
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 138
    .end local v2    # "address":Ljava/net/InterfaceAddress;
    .end local v3    # "bundles":[Landroid/os/Bundle;
    .end local v6    # "end":I
    .end local v7    # "hostAddress":Ljava/lang/String;
    .end local v10    # "ifaceInfo":Landroid/os/Bundle;
    .end local v12    # "inet":Ljava/net/InetAddress;
    .end local v17    # "netmask":Ljava/lang/String;
    .end local v18    # "prefixLength":S
    :catch_1
    move-exception v20

    .line 140
    .restart local v20    # "se":Ljava/net/SocketException;
    invoke-virtual/range {v20 .. v20}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_3

    .line 162
    .end local v20    # "se":Ljava/net/SocketException;
    .restart local v2    # "address":Ljava/net/InterfaceAddress;
    .restart local v6    # "end":I
    .restart local v7    # "hostAddress":Ljava/lang/String;
    .restart local v10    # "ifaceInfo":Landroid/os/Bundle;
    .restart local v12    # "inet":Ljava/net/InetAddress;
    :cond_6
    const-string v23, "family"

    const-string v24, "IPv4"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 172
    .restart local v17    # "netmask":Ljava/lang/String;
    .restart local v18    # "prefixLength":S
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 173
    .local v22, "value":[J
    const/16 v23, 0x40

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    .line 174
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-wide v26, v22, v24

    rsub-int/lit8 v24, v18, 0x40

    shl-long v26, v26, v24

    aput-wide v26, v22, v23

    .line 180
    :goto_7
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    const/16 v23, 0x0

    move/from16 v24, v23

    :goto_8
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-wide v4, v22, v24

    .line 181
    .local v4, "crtLong":J
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v8, v0, :cond_b

    .line 182
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_9

    const-string v23, ""

    :goto_a
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/32 v28, 0xffff

    and-long v28, v28, v4

    const-wide/16 v30, 0x0

    cmp-long v23, v28, v30

    if-nez v23, :cond_a

    const-string v23, ""

    .line 183
    :goto_b
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 184
    const/16 v23, 0x10

    shr-long v4, v4, v23

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 176
    .end local v4    # "crtLong":J
    .end local v8    # "i":I
    :cond_8
    const/16 v23, 0x1

    const-wide/16 v26, 0x0

    aput-wide v26, v22, v23

    .line 177
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-wide v26, v22, v24

    add-int/lit8 v24, v18, -0x40

    rsub-int/lit8 v24, v24, 0x40

    shl-long v26, v26, v24

    aput-wide v26, v22, v23

    goto :goto_7

    .line 182
    .restart local v4    # "crtLong":J
    .restart local v8    # "i":I
    :cond_9
    const-string v23, ":"

    goto :goto_a

    :cond_a
    const-wide/32 v28, 0xffff

    and-long v28, v28, v4

    .line 183
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    goto :goto_b

    .line 180
    :cond_b
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    goto :goto_8

    .line 195
    .end local v4    # "crtLong":J
    .end local v8    # "i":I
    .end local v22    # "value":[J
    .restart local v3    # "bundles":[Landroid/os/Bundle;
    :cond_c
    array-length v0, v3

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/os/Bundle;

    .line 196
    .local v21, "tmp":[Landroid/os/Bundle;
    array-length v0, v3

    move/from16 v23, v0

    aput-object v10, v21, v23

    .line 197
    move-object/from16 v3, v21

    goto/16 :goto_6

    .line 204
    .end local v2    # "address":Ljava/net/InterfaceAddress;
    .end local v3    # "bundles":[Landroid/os/Bundle;
    .end local v6    # "end":I
    .end local v7    # "hostAddress":Ljava/lang/String;
    .end local v9    # "iface":Ljava/net/NetworkInterface;
    .end local v10    # "ifaceInfo":Landroid/os/Bundle;
    .end local v12    # "inet":Ljava/net/InetAddress;
    .end local v13    # "internal":Z
    .end local v15    # "mac":Ljava/lang/String;
    .end local v17    # "netmask":Ljava/lang/String;
    .end local v18    # "prefixLength":S
    .end local v21    # "tmp":[Landroid/os/Bundle;
    :cond_d
    return-object v11

    .line 172
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    .line 88
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->mConnectivityBroadcastReceiver:Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 7
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

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v4, "networkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->getNetworkInterfaces()Landroid/os/Bundle;

    move-result-object v3

    .line 57
    .local v3, "networkInterfaces":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "networkInterfaces":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 64
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_0
    const-string v5, "networkInterfaces"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "RNOS"

    return-object v0
.end method

.method public onHostDestroy()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->unregisterReceiver()V

    .line 81
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->unregisterReceiver()V

    .line 76
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->registerReceiver()V

    .line 71
    return-void
.end method

.method public updateAndSendOsInfo()V
    .locals 7

    .prologue
    .line 98
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, "osInfo":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->getNetworkInterfaces()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    .local v1, "networkInterfaces":Landroid/os/Bundle;
    const-string v4, "networkInterfaces"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "networkInterfaces":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/rnpackage/RNOS;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    .line 108
    .local v3, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 109
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v5, "rn-os-info"

    .line 110
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void

    .line 103
    .end local v3    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method
