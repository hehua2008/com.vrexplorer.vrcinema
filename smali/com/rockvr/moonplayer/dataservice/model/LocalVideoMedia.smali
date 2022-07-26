.class public Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
.super Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;
.source "LocalVideoMedia.java"


# static fields
.field public static final BROWSE_TYPE_DIR:I = 0x2

.field public static final BROWSE_TYPE_FLAT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private browseMode:I

.field private currentSubtitleName:Ljava/lang/String;

.field private duration:J

.field private fileSize:J

.field private hashValue:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parentPath:Ljava/lang/String;

.field private subVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia$1;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia$1;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 233
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;-><init>(Landroid/os/Parcel;)V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->id:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->name:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->duration:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->currentSubtitleName:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subtitles:Ljava/util/List;

    .line 228
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subVideos:Ljava/util/List;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "thumbnailPath"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "parentPath"    # Ljava/lang/String;
    .param p7, "hashValue"    # Ljava/lang/String;
    .param p8, "fileSize"    # J

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 182
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->id:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->name:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    .line 185
    iput-wide p4, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->duration:J

    .line 186
    iput-object p6, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 187
    iput-object p7, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 188
    iput-wide p8, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 189
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    if-ne p0, p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    instance-of v3, p1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 163
    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 165
    .local v0, "that":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 166
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 167
    :cond_5
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBrowseMode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    return v0
.end method

.method public getCurrentSubtitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->currentSubtitleName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->duration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    return-wide v0
.end method

.method public getHashValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subVideos:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 174
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 175
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public setBrowseMode(I)V
    .locals 0
    .param p1, "browseMode"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    .line 109
    return-void
.end method

.method public setCurrentSubtitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentSubtitleName"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->currentSubtitleName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->duration:J

    .line 156
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    .line 89
    return-void
.end method

.method public setHashValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashValue"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentPath"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSubVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "subVideos":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subVideos:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "subtitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subtitles:Ljava/util/List;

    .line 97
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/model/BaseVideoMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->browseMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->hashValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->currentSubtitleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subtitles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 209
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->subVideos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 210
    return-void
.end method
