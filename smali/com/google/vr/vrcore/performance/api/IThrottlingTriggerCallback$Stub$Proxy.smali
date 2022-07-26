.class Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThrottlingTriggerCallback.java"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    return-object v0
.end method

.method public onTriggerActivated(FJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    :try_start_0
    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v0, p0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
