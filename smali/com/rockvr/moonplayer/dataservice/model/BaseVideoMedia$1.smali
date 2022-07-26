.class final Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia$1;
.super Ljava/lang/Object;
.source "BaseVideoMedia.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;

    invoke-direct {v0, p1}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia$1;->newArray(I)[Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;

    move-result-object v0

    return-object v0
.end method
