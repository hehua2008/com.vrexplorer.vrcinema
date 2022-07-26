.class Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVrCreator.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;
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
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public DEPRECATED_newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
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
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    iget-object v0, p0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 116
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    return-object v0
.end method

.method public newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 139
    :try_start_0
    const-string v1, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/vr/vrcore/library/api/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 142
    iget-object v0, p0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 144
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 147
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-object v0

    :cond_1
    move-object v1, v0

    .line 140
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
