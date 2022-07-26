.class public Lcom/google/vr/cardboard/VrCoreLibraryLoader;
.super Ljava/lang/Object;
.source "VrCoreLibraryLoader.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVrCoreGvrLibraryAvailable(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    invoke-static {p0, v0}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V

    .line 30
    return-void
.end method

.method private static checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 83
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreSdkLibraryVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/vr/ndk/base/Version;->parse(Ljava/lang/String;)Lcom/google/vr/ndk/base/Version;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    sget-object v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v1, "VrCore version does not support library loading."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v0, v5}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/vr/ndk/base/Version;->isAtLeast(Lcom/google/vr/ndk/base/Version;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    sget-object v1, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v2, "VrCore GVR library version obsolete; VrCore supports %s but target version is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/Version;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 96
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v0, v5}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 101
    :cond_1
    return-void
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;III)J
    .locals 8
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    :try_start_0
    new-instance v0, Lcom/google/vr/ndk/base/Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/ndk/base/Version;-><init>(III)V

    .line 39
    sget-object v1, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    invoke-virtual {v1, v0}, Lcom/google/vr/ndk/base/Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    sget-object v1, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v4, "Native SDK version does not match Java; expected %s but received %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 44
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Version;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 42
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-static {p0, v0}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V

    .line 48
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 49
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteCreator(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IVrCreator;

    move-result-object v4

    .line 52
    invoke-static {v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v1

    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v5

    .line 51
    invoke-interface {v4, v1, v5}, Lcom/google/vr/vrcore/library/api/IVrCreator;->newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    sget-object v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v1, "Failed to load native GVR library from VrCore: no library loader available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 68
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget v4, v0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    iget v5, v0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    iget v0, v0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    invoke-interface {v1, v4, v5, v0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;->loadNativeGvrLibrary(III)J
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 67
    :goto_1
    sget-object v1, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to load native GVR library from VrCore:\n  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 68
    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method
