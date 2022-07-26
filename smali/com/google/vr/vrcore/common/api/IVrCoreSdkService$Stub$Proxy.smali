.class Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVrCoreSdkService.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 161
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 167
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    return-object v0
.end method

.method public getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 241
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 243
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 247
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public initialize(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 138
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 142
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    return v0

    :cond_0
    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 202
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    :goto_0
    if-eqz p2, :cond_1

    .line 211
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    :goto_1
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 218
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 219
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    return v0

    .line 208
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 215
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 219
    goto :goto_2
.end method
