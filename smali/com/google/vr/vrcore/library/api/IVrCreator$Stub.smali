.class public abstract Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;
.super Landroid/os/Binder;
.source "IVrCreator.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IVrCreator"

.field static final TRANSACTION_DEPRECATED_newNativeLibraryLoader:I = 0x3

.field static final TRANSACTION_newNativeLibraryLoader:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrCreator;
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
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IVrCreator;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/google/vr/vrcore/library/api/IVrCreator;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 56
    :sswitch_0
    const-string v0, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 57
    goto :goto_0

    .line 61
    :sswitch_1
    const-string v2, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v2}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->DEPRECATED_newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object v2

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    :sswitch_2
    const-string v2, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v2

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v3

    .line 76
    invoke-virtual {p0, v2, v3}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object v2

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 79
    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
