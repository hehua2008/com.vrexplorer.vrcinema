.class public final Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerOrientationEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public qw:F

.field public qx:F

.field public qy:F

.field public qz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 27
    iput p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 28
    iput p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 29
    iput p4, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2

    .prologue
    .line 86
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy ControllerOrientationEvent from non-ControllerOrientationEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 91
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 92
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 93
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 94
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 95
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 96
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final getByteSize()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 77
    return-void
.end method

.method public final set(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 1

    .prologue
    .line 37
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 38
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 39
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 40
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 41
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 67
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 68
    return-void
.end method
