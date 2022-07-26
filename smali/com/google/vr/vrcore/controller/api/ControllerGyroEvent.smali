.class public final Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerGyroEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2

    .prologue
    .line 88
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy ControllerGyroEvent from non-ControllerGyroEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 93
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    .line 94
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    .line 95
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    .line 96
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    .line 97
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final getByteSize()I
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    .line 79
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    return-void
.end method
