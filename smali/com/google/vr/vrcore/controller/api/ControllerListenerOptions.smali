.class public Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
.super Ljava/lang/Object;
.source "ControllerListenerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enableAccel:Z

.field public enableGestures:Z

.field public enableGyro:Z

.field public enableOrientation:Z

.field public enableTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v0, v2

    .line 61
    goto :goto_1

    :cond_2
    move v0, v2

    .line 62
    goto :goto_2

    :cond_3
    move v0, v2

    .line 63
    goto :goto_3

    :cond_4
    move v1, v2

    .line 64
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ori=%b, gyro=%b, accel=%b, touch=%b, gestures=%b"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_1

    :cond_2
    move v0, v2

    .line 54
    goto :goto_2

    :cond_3
    move v0, v2

    .line 55
    goto :goto_3

    :cond_4
    move v1, v2

    .line 56
    goto :goto_4
.end method
