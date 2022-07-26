.class public final Lcom/google/vr/vrcore/base/api/VrCoreUtils;
.super Ljava/lang/Object;
.source "VrCoreUtils.java"


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/base/api/VrCoreUtils$ConnectionResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/vr/vrcore/base/api/VrCoreUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVrCoreAvailability(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailabilityImpl(Landroid/content/Context;)I

    move-result v0

    .line 96
    return v0
.end method

.method private static checkVrCoreAvailabilityImpl(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 250
    const-string v2, "com.google.vr.vrcore"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.vr.vrcore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 260
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_2

    .line 261
    const/4 v0, 0x2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->verifyRemotePackageSignature(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const/16 v0, 0x9

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 278
    const-string v3, "com.google.vr.vrcore"

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 279
    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    :try_start_1
    const-string v2, "com.google.vr.vrcore"

    const/16 v3, 0x2000

    .line 288
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 290
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    move v0, v1

    .line 291
    goto :goto_0

    :catch_1
    move-exception v0

    .line 298
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getConnectionResultString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    packed-switch p0, :pswitch_data_0

    .line 236
    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid connection result: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "VR Service present"

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v0, "VR Service missing"

    goto :goto_0

    .line 222
    :pswitch_2
    const-string v0, "VR Service disabled"

    goto :goto_0

    .line 224
    :pswitch_3
    const-string v0, "VR Service updating"

    goto :goto_0

    .line 226
    :pswitch_4
    const-string v0, "VR Service obsolete"

    goto :goto_0

    .line 228
    :pswitch_5
    const-string v0, "VR Service not connected"

    goto :goto_0

    .line 230
    :pswitch_6
    const-string v0, "No permission to do operation"

    goto :goto_0

    .line 232
    :pswitch_7
    const-string v0, "This operation is not supported on this device"

    goto :goto_0

    .line 234
    :pswitch_8
    const-string v0, "An unknown failure occurred"

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getVrCoreClientApiVersion(Landroid/content/Context;)I
    .locals 4
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.vr.vrcore"

    const/16 v3, 0x80

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 123
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 125
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.vr.vrcore.ClientApiVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0

    .line 128
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0
.end method

.method public static getVrCoreSdkLibraryVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 177
    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.vr.vrcore"

    const/16 v2, 0x80

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 182
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 190
    :cond_0
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    .line 191
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 195
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 196
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v0, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 199
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.vr.vrcore.SdkLibraryVersion"

    const-string v2, ""

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v0, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0

    .line 206
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVrCoreVersionCode(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.vr.vrcore"

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not find VrCore package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0
.end method

.method public static getVrCoreVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 155
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.vr.vrcore"

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not find VrCore package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v0, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v0
.end method

.method public static isVrCoreAvailable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVrCoreComponent(Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->isVrCorePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVrCorePackage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 241
    const-string v0, "com.google.vr.vrcore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static verifyRemotePackageSignature(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.vr.vrcore"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 306
    new-array v3, v0, [Landroid/content/pm/Signature;

    sget-object v4, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    new-array v0, v0, [Landroid/content/pm/Signature;

    sget-object v3, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 313
    goto :goto_0
.end method
