.class Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IControllerService.java"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;
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
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    return-object v0
.end method

.method public initialize(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 113
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 116
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    return v0

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 149
    :try_start_0
    const-string v1, "com.google.vr.vrcore.controller.api.IControllerService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/google/vr/vrcore/controller/api/IControllerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 153
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 155
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 158
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 161
    return v0

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterListener(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 181
    :try_start_0
    const-string v3, "com.google.vr.vrcore.controller.api.IControllerService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 184
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 188
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    return v0

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
