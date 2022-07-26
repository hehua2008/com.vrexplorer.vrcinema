.class public final Lcom/google/vr/cardboard/LegacyVrParamsProvider;
.super Ljava/lang/Object;
.source "LegacyVrParamsProvider.java"

# interfaces
.implements Lcom/google/vr/cardboard/VrParamsProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readDeviceParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readPhoneParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public final readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public final readUserPrefs()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateUserPrefs(Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final writeDeviceParams(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 1

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 27
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->removeDeviceParamsFromExternalStorage()Z

    move-result v0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->writeDeviceParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result v0

    goto :goto_0
.end method
