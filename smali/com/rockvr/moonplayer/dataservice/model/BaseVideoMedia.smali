.class public Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;
.super Ljava/lang/Object;
.source "BaseVideoMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO:Ljava/lang/String; = "Video"


# instance fields
.field protected path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filePath"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia$1;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia$1;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->path:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "thumbnailPath"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p6, p0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->path:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->path:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method
