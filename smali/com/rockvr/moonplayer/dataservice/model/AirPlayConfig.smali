.class public Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
.super Ljava/lang/Object;
.source "AirPlayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private listEndpoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listEndpoint"
    .end annotation
.end field

.field private serverName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverName"
    .end annotation
.end field

.field private serverUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverUuid"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig$1;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig$1;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "serverName"    # Ljava/lang/String;
    .param p3, "serverUuid"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "listEndpoint"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    .line 129
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverUuid:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    .line 132
    iput-object p5, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->listEndpoint:Ljava/lang/String;

    .line 133
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverName:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverUuid:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->listEndpoint:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    instance-of v3, p1, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;

    .line 28
    .local v0, "that":Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->listEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->getServerUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersion6()Z
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setListEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "listEndpoint"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->listEndpoint:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setServerUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverUuid"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverUuid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->serverUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/AirPlayConfig;->listEndpoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void
.end method
