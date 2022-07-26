.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.super Landroid/os/Binder;
.source "IDaydreamListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamListener"

.field static final TRANSACTION_applyFade:I = 0x3

.field static final TRANSACTION_dumpDebugData:I = 0x5

.field static final TRANSACTION_getTargetApiVersion:I = 0x1

.field static final TRANSACTION_recenterHeadTracking:I = 0x4

.field static final TRANSACTION_requestStopTracking:I = 0x2

.field static final TRANSACTION_resumeHeadTracking:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;
    .locals 2

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 56
    goto :goto_0

    .line 60
    :sswitch_1
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->getTargetApiVersion()I

    move-result v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 64
    goto :goto_0

    .line 68
    :sswitch_2
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v0, p3, v1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    .line 78
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    :sswitch_3
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 87
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->applyFade(IJ)V

    move v0, v1

    .line 88
    goto :goto_0

    .line 92
    :sswitch_4
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->recenterHeadTracking()V

    move v0, v1

    .line 94
    goto :goto_0

    .line 98
    :sswitch_5
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->dumpDebugData()V

    move v0, v1

    .line 100
    goto :goto_0

    .line 104
    :sswitch_6
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    .line 112
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    move v0, v1

    .line 113
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
