.class final Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;
.super Ljava/lang/Object;
.source "ControllerEventPacket.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
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
        "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->readFromParcel(Landroid/os/Parcel;)V

    .line 272
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    .locals 1

    .prologue
    .line 277
    new-array v0, p1, [Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;->newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    return-object v0
.end method
