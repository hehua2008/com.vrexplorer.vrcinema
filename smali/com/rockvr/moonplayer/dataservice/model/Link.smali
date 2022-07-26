.class public Lcom/rockvr/moonplayer/dataservice/model/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/Link;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private icon:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/Link$1;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/model/Link$1;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/Link;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
