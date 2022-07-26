.class public final Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerButtonEvent.java"


# static fields
.field public static final BUTTON_APP:I = 0x3

.field public static final BUTTON_CLICK:I = 0x1

.field public static final BUTTON_COUNT:I = 0x7

.field public static final BUTTON_HOME:I = 0x2

.field public static final BUTTON_NONE:I = 0x0

.field public static final BUTTON_VOLUME_DOWN:I = 0x6

.field public static final BUTTON_VOLUME_UP:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public button:I

.field public down:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method public static buttonToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 92
    :pswitch_0
    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[Unknown button: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 80
    :pswitch_1
    const-string v0, "BUTTON_NONE"

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "BUTTON_CLICK"

    goto :goto_0

    .line 84
    :pswitch_3
    const-string v0, "BUTTON_HOME"

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "BUTTON_APP"

    goto :goto_0

    .line 88
    :pswitch_5
    const-string v0, "BUTTON_VOLUME_UP"

    goto :goto_0

    .line 90
    :pswitch_6
    const-string v0, "BUTTON_VOLUME_DOWN"

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2

    .prologue
    .line 103
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy ControllerButtonEvent from non-ControllerButtonEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 108
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 109
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    .line 110
    iget-boolean v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    .line 111
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public final getByteSize()I
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
