.class public interface abstract Lcom/google/vr/cardboard/VrParamsProvider;
.super Ljava/lang/Object;
.source "VrParamsProvider.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
.end method

.method public abstract readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
.end method

.method public abstract readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
.end method

.method public abstract readUserPrefs()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
.end method

.method public abstract updateUserPrefs(Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;)Z
.end method

.method public abstract writeDeviceParams(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
.end method
