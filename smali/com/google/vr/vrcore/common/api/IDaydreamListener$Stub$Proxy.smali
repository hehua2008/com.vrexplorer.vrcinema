.class Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDaydreamListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
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
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 124
    return-void
.end method


# virtual methods
.method public applyFade(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dumpDebugData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    return-object v0
.end method

.method public getTargetApiVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 139
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 142
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    return v0

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public recenterHeadTracking()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
