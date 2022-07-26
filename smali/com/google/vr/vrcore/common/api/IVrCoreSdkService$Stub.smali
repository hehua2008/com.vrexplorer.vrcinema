.class public abstract Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;
.super Landroid/os/Binder;
.source "IVrCoreSdkService.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IVrCoreSdkService"

.field static final TRANSACTION_getDaydreamManager:I = 0x2

.field static final TRANSACTION_getLoggingService:I = 0x4

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_setClientOptions:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 2

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 52
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->initialize(I)Z

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 67
    :sswitch_2
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_2

    .line 75
    :sswitch_3
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v4, v0

    .line 84
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 90
    :goto_4
    invoke-virtual {p0, v4, v0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move-object v4, v3

    .line 81
    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 88
    goto :goto_4

    .line 97
    :sswitch_4
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object v0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
