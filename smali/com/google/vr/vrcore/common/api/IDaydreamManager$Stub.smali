.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
.super Landroid/os/Binder;
.source "IDaydreamManager.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamManager"

.field static final TRANSACTION_deprecatedLaunchInVr:I = 0x4

.field static final TRANSACTION_exitFromVr:I = 0xa

.field static final TRANSACTION_handleInsertionIntoHeadset:I = 0xb

.field static final TRANSACTION_handleRemovalFromHeadset:I = 0xc

.field static final TRANSACTION_launchInVr:I = 0x7

.field static final TRANSACTION_launchVrHome:I = 0x8

.field static final TRANSACTION_launchVrTransition:I = 0x9

.field static final TRANSACTION_prepareVr:I = 0x3

.field static final TRANSACTION_registerDaydreamIntent:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterDaydreamIntent:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 2

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
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
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 56
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 70
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z

    move-result v0

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 67
    goto :goto_1

    :cond_1
    move v0, v3

    .line 73
    goto :goto_2

    .line 78
    :sswitch_2
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 86
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterListener(Landroid/content/ComponentName;)Z

    move-result v0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 84
    goto :goto_3

    .line 93
    :sswitch_3
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 102
    :goto_4
    new-instance v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result v0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v1, p3, v2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 99
    goto :goto_4

    .line 117
    :sswitch_4
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 125
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v0, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 123
    goto :goto_5

    .line 132
    :sswitch_5
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 140
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 138
    goto :goto_6

    .line 145
    :sswitch_6
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterDaydreamIntent()V

    goto/16 :goto_0

    .line 151
    :sswitch_7
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v4, v0

    .line 160
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 166
    :goto_8
    invoke-virtual {p0, v4, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z

    move-result v0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v0, :cond_8

    move v3, v2

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_9
    move-object v4, v1

    .line 157
    goto :goto_7

    :cond_a
    move-object v0, v1

    .line 164
    goto :goto_8

    .line 173
    :sswitch_8
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrHome()Z

    move-result v0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v0, :cond_b

    move v3, v2

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    :sswitch_9
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z

    move-result v0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v0, :cond_c

    move v3, v2

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    :sswitch_a
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 194
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 199
    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->exitFromVr(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v0, :cond_d

    move v3, v2

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    .line 197
    goto :goto_9

    .line 206
    :sswitch_b
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleInsertionIntoHeadset([B)V

    goto/16 :goto_0

    .line 214
    :sswitch_c
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleRemovalFromHeadset()V

    goto/16 :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
