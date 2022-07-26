.class public Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;
.super Ljava/lang/Object;
.source "TimestampedTemperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_SIZE:I = 0x10


# instance fields
.field public temperature:F

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    .line 94
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void
.end method

.method public set(JF)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    .line 33
    iput p3, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    .line 34
    return-void
.end method

.method public set(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V
    .locals 3

    .prologue
    .line 38
    iget-wide v0, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    iget v2, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->set(JF)V

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 67
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v2, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget v1, p0, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v0, v1, v0

    if-eq v0, v4, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parcelable implemented incorrectly, PARCEL_SIZE must include the size of each parcelled field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method
