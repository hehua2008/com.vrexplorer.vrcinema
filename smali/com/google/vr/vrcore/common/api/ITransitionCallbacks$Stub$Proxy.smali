.class Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITransitionCallbacks.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.google.vr.vrcore.common.api.ITransitionCallbacks"

    return-object v0
.end method

.method public onTransitionComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.ITransitionCallbacks"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
