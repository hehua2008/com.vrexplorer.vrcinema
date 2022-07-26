.class Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;,
        Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;
    }
.end annotation


# static fields
.field private static final FFMPEG_MAX_PROCESS_NUM:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field private static final THUMBNAIL_HEIGHT:I = 0xc0

.field private static final THUMBNAIL_WIDTH:I = 0x100


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mFFmpegProcessNum:I

.field private mProcessThumbnailResult:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mFFmpegProcessNum:I

    .line 51
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;-><init>(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    .prologue
    .line 24
    iget v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mFFmpegProcessNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->getThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->transformBitmapToLocalCacheJPG(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mProcessThumbnailResult:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    return-object v0
.end method

.method private getThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "video"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 164
    .local v10, "id":I
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 165
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 167
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v4, v10

    const/4 v3, 0x1

    invoke-static {v2, v4, v5, v3, v11}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 200
    .end local v10    # "id":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 172
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 177
    :cond_0
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_1
    new-instance v1, Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-direct {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;-><init>()V

    .line 182
    .local v1, "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    const/4 v0, 0x0

    .line 184
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getMetadata()Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 186
    .local v8, "duration":J
    invoke-virtual {p1, v8, v9}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setDuration(J)V

    .line 187
    invoke-virtual {p1}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rmvb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 196
    :goto_2
    invoke-virtual {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    .line 199
    .end local v8    # "duration":J
    :goto_3
    iget v2, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mFFmpegProcessNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mFFmpegProcessNum:I

    goto :goto_0

    .line 178
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    :catch_1
    move-exception v7

    .line 179
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "fmmr":Lwseemann/media/FFmpegMediaMetadataRetriever;
    .restart local v8    # "duration":J
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_3
    div-long v2, v8, v2

    long-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-long v12, v2

    .line 191
    .local v12, "second":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v12

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/16 v6, 0xc0

    invoke-virtual/range {v1 .. v6}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 193
    .end local v8    # "duration":J
    .end local v12    # "second":J
    :catch_2
    move-exception v7

    .line 194
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    invoke-virtual {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->release()V

    throw v2
.end method

.method private transformBitmapToLocalCacheJPG(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "thumbPath"    # Ljava/io/File;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {p2, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    const/4 v3, 0x0

    .line 137
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 140
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    if-eqz v4, :cond_3

    .line 150
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 153
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 151
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 153
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 145
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    if-eqz v3, :cond_0

    .line 150
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 151
    :catch_2
    move-exception v2

    .line 152
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    .line 150
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 153
    :cond_2
    :goto_3
    throw v6

    .line 151
    :catch_3
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 145
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mProcessThumbnailResult:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    .line 209
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 210
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 211
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 212
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 213
    iput-object v1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method publishProcessTask(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method setProcessThumbnailResult(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;)V
    .locals 0
    .param p1, "processThumbnailResult"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->mProcessThumbnailResult:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    .line 205
    return-void
.end method
