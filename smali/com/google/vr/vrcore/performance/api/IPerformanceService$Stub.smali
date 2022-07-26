.class public abstract Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;
.super Landroid/os/Binder;
.source "IPerformanceService.java"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IPerformanceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IPerformanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.performance.api.IPerformanceService"

.field static final TRANSACTION_addTrigger:I = 0x3

.field static final TRANSACTION_getCurrentEstimatedThrottleWarningTime:I = 0x2

.field static final TRANSACTION_getCurrentThrottlingRelativeTemperature:I = 0x1

.field static final TRANSACTION_removeAllTriggers:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    .locals 2

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;

    invoke-direct {v0}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p3, v8}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v8

    .line 66
    goto :goto_0

    .line 70
    :sswitch_2
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentEstimatedThrottleWarningTime()J

    move-result-wide v0

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 74
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v2, v0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    move-result-object v3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 96
    goto :goto_0

    .line 100
    :sswitch_4
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 108
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->removeAllTriggers(Landroid/content/ComponentName;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 110
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 106
    goto :goto_1

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
