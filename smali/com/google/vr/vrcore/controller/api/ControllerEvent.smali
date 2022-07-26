.class public abstract Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.super Ljava/lang/Object;
.source "ControllerEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTROLLER_ID_DEFAULT:I


# instance fields
.field public controllerId:I

.field public timestampNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    .line 50
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    .line 51
    return-void
.end method

.method public getByteSize()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xc

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->timestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
