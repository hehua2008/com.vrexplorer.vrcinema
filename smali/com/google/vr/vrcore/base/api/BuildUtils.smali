.class public Lcom/google/vr/vrcore/base/api/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# static fields
.field private static volatile isDebug:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized computeIsDebugBuild(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 25
    const-class v1, Lcom/google/vr/vrcore/base/api/BuildUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/vr/vrcore/base/api/SignatureUtils;->BLAZE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/vr/vrcore/base/api/SignatureUtils;->ANDROID_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v4, v2, v3

    .line 29
    invoke-static {v0, v2}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_0
    :try_start_2
    sget-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find self package info"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDebugBuild(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/BuildUtils;->computeIsDebugBuild(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized setIsDebugBuild(Z)V
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/google/vr/vrcore/base/api/BuildUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
