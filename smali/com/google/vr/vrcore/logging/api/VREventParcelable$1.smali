.class final Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;
.super Ljava/lang/Object;
.source "VREventParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/logging/api/VREventParcelable;
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
        "Lcom/google/vr/vrcore/logging/api/VREventParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/logging/api/VREventParcelable;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/vr/vrcore/logging/api/VREventParcelable;-><init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/vr/vrcore/logging/api/VREventParcelable;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;->newArray(I)[Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    move-result-object v0

    return-object v0
.end method
