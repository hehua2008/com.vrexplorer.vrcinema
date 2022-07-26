.class public Lcom/google/vr/vrcore/common/api/HeadTrackingState;
.super Ljava/lang/Object;
.source "HeadTrackingState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/common/api/HeadTrackingState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/common/api/HeadTrackingState$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 24
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 45
    return-void
.end method

.method public copyFrom(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 83
    if-ne p1, p0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    instance-of v0, p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    iget-object v0, p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    iget-object v1, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 73
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 74
    return-void
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    array-length v0, v0

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "HeadTrackingState["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    return-void
.end method
