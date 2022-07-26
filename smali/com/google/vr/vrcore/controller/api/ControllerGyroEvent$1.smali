.class final Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent$1;
.super Ljava/lang/Object;
.source "ControllerGyroEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    invoke-direct {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 1

    .prologue
    .line 56
    new-array v0, p1, [Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent$1;->newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v0

    return-object v0
.end method
