.class public abstract Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;
.super Landroid/os/Binder;
.source "IVrCoreLoggingService.java"

# interfaces
.implements Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

.field static final TRANSACTION_log:I = 0x2

.field static final TRANSACTION_logBatched:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    .locals 2

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 58
    goto :goto_0

    .line 62
    :sswitch_1
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    .line 70
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->log(Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :sswitch_2
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->logBatched([Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V

    move v0, v1

    .line 79
    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
