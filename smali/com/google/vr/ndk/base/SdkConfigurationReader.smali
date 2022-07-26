.class public Lcom/google/vr/ndk/base/SdkConfigurationReader;
.super Ljava/lang/Object;
.source "SdkConfigurationReader.java"


# static fields
.field public static final DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field static final REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field private static final TAG:Ljava/lang/String;

.field static sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    const-class v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    .line 38
    sput-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useSystemClockForSensorTimestamps:Ljava/lang/Boolean;

    .line 39
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useMagnetometerInSensorFusion:Ljava/lang/Boolean;

    .line 40
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicLibraryLoading:Ljava/lang/Boolean;

    .line 41
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->cpuLateLatchingEnabled:Ljava/lang/Boolean;

    .line 42
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    .line 43
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->asyncReprojectionConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    .line 44
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useOnlineMagnetometerCalibration:Ljava/lang/Boolean;

    .line 46
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    .line 47
    sput-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useSystemClockForSensorTimestamps:Ljava/lang/Boolean;

    .line 48
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useMagnetometerInSensorFusion:Ljava/lang/Boolean;

    .line 49
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->allowDynamicLibraryLoading:Ljava/lang/Boolean;

    .line 50
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->cpuLateLatchingEnabled:Ljava/lang/Boolean;

    .line 51
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    .line 52
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->asyncReprojectionConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    .line 53
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useOnlineMagnetometerCalibration:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 3

    .prologue
    .line 66
    const-class v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    monitor-exit v1

    .line 81
    :goto_0
    return-object v0

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->readParamsFromProvider(Lcom/google/vr/cardboard/VrParamsProvider;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    .line 75
    const-class v2, Lcom/google/vr/ndk/base/SdkConfigurationReader;

    monitor-enter v2

    .line 76
    :try_start_1
    sput-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 77
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 81
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->sParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 77
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static readParamsFromProvider(Lcom/google/vr/cardboard/VrParamsProvider;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    invoke-direct {v0}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;-><init>()V

    .line 87
    sget-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->REQUESTED_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    iput-object v1, v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 88
    const-string v1, "1.20.0"

    iput-object v1, v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    .line 89
    invoke-interface {p0, v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->TAG:Ljava/lang/String;

    const-string v1, "VrParamsProvider returned null params, using defaults."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Fetched params from VrParamsProvider: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
