.class public Lcom/google/vr/vrcore/logging/api/VREventParcelable;
.super Ljava/lang/Object;
.source "VREventParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/logging/api/VREventParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private event:Lcom/google/common/logging/nano/Vr$VREvent;

.field private eventCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/common/logging/nano/Vr$VREvent;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    .line 23
    iput-object p2, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 30
    array-length v1, v0

    if-lez v1, :cond_0

    .line 13681
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent;-><init>()V

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;

    .line 31
    iput-object v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logging with empty VREvent. Error: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/logging/api/VREventParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    return-object v0
.end method

.method public getEventCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-static {v0}, Lcom/google/common/logging/nano/Vr$VREvent;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 49
    :cond_0
    return-void
.end method
