.class final Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;
.super Ljava/lang/Object;
.source "ControllerEventPacket2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
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
        "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    .locals 1

    .prologue
    .line 113
    new-array v0, p1, [Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;->newArray(I)[Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    move-result-object v0

    return-object v0
.end method
