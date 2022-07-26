.class public Lwseemann/media/FFmpegMediaMetadataRetriever;
.super Ljava/lang/Object;
.source "FFmpegMediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
    }
.end annotation


# static fields
.field public static IN_PREFERRED_CONFIG:Landroid/graphics/Bitmap$Config; = null

.field private static final JNI_LIBRARIES:[Ljava/lang/String;

.field public static final METADATA_CHAPTER_COUNT:Ljava/lang/String; = "chapter_count"

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "album"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "album_artist"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "artist"

.field public static final METADATA_KEY_AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field public static final METADATA_KEY_CHAPTER_END_TIME:Ljava/lang/String; = "chapter_end_time"

.field public static final METADATA_KEY_CHAPTER_START_TIME:Ljava/lang/String; = "chapter_start_time"

.field public static final METADATA_KEY_COMMENT:Ljava/lang/String; = "comment"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "composer"

.field public static final METADATA_KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field public static final METADATA_KEY_CREATION_TIME:Ljava/lang/String; = "creation_time"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "date"

.field public static final METADATA_KEY_DISC:Ljava/lang/String; = "disc"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final METADATA_KEY_ENCODED_BY:Ljava/lang/String; = "encoded_by"

.field public static final METADATA_KEY_ENCODER:Ljava/lang/String; = "encoder"

.field public static final METADATA_KEY_FILENAME:Ljava/lang/String; = "filename"

.field public static final METADATA_KEY_FILESIZE:Ljava/lang/String; = "filesize"

.field public static final METADATA_KEY_FRAMERATE:Ljava/lang/String; = "framerate"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "genre"

.field public static final METADATA_KEY_ICY_METADATA:Ljava/lang/String; = "icy_metadata"

.field public static final METADATA_KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final METADATA_KEY_PERFORMER:Ljava/lang/String; = "performer"

.field public static final METADATA_KEY_PUBLISHER:Ljava/lang/String; = "publisher"

.field public static final METADATA_KEY_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final METADATA_KEY_SERVICE_PROVIDER:Ljava/lang/String; = "service_provider"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final METADATA_KEY_TRACK:Ljava/lang/String; = "track"

.field public static final METADATA_KEY_VARIANT_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final METADATA_KEY_VIDEO_CODEC:Ljava/lang/String; = "video_codec"

.field public static final METADATA_KEY_VIDEO_ROTATION:Ljava/lang/String; = "rotate"

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FFmpegMediaMetadataRetriever"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "avutil"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "swscale"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "avcodec"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "avformat"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ffmpeg_mediametadataretriever_jni"

    aput-object v3, v1, v2

    sput-object v1, Lwseemann/media/FFmpegMediaMetadataRetriever;->JNI_LIBRARIES:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lwseemann/media/FFmpegMediaMetadataRetriever;->JNI_LIBRARIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    sget-object v1, Lwseemann/media/FFmpegMediaMetadataRetriever;->JNI_LIBRARIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lwseemann/media/FFmpegMediaMetadataRetriever;->native_init()V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-direct {p0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->native_setup()V

    .line 135
    return-void
.end method

.method private native _getFrameAtTime(JI)[B
.end method

.method private native _getScaledFrameAtTime(JIII)[B
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLjava/util/HashMap;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native extractMetadataFromChapter(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 556
    :try_start_0
    invoke-direct {p0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 560
    return-void

    .line 558
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getEmbeddedPicture()[B
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 441
    const-wide/16 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    const/4 v4, 0x0

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 415
    .local v1, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 417
    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3}, Lwseemann/media/FFmpegMediaMetadataRetriever;->_getFrameAtTime(JI)[B

    move-result-object v2

    .line 419
    .local v2, "picture":[B
    if-eqz v2, :cond_0

    .line 420
    array-length v3, v2

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    :cond_0
    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 370
    if-ltz p3, :cond_0

    const/4 v3, 0x3

    if-le p3, v3, :cond_1

    .line 372
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 379
    .local v1, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lwseemann/media/FFmpegMediaMetadataRetriever;->_getFrameAtTime(JI)[B

    move-result-object v2

    .line 383
    .local v2, "picture":[B
    if-eqz v2, :cond_2

    .line 384
    array-length v3, v2

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    :cond_2
    return-object v0
.end method

.method public getMetadata()Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 306
    const/4 v3, 0x0

    .line 307
    .local v3, "update_only":Z
    const/4 v0, 0x0

    .line 309
    .local v0, "apply_filter":Z
    new-instance v1, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;

    invoke-direct {v1, p0}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;-><init>(Lwseemann/media/FFmpegMediaMetadataRetriever;)V

    .line 310
    .local v1, "data":Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
    const/4 v2, 0x0

    .line 311
    .local v2, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v3, v0, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->native_getMetadata(ZZLjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v4

    .line 320
    .end local v1    # "data":Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
    :cond_0
    :goto_0
    return-object v1

    .line 317
    .restart local v1    # "data":Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;
    :cond_1
    invoke-virtual {v1, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever$Metadata;->parse(Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 318
    goto :goto_0
.end method

.method public getScaledFrameAtTime(JII)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "timeUs"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 521
    .local v7, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 523
    const/4 v4, 0x2

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lwseemann/media/FFmpegMediaMetadataRetriever;->_getScaledFrameAtTime(JIII)[B

    move-result-object v8

    .line 525
    .local v8, "picture":[B
    if-eqz v8, :cond_0

    .line 526
    array-length v1, v8

    invoke-static {v8, v9, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    :cond_0
    return-object v0
.end method

.method public getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 476
    if-ltz p3, :cond_0

    const/4 v3, 0x3

    if-le p3, v3, :cond_1

    .line 478
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_1
    const/4 v0, 0x0

    .line 483
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    .local v1, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 487
    invoke-direct/range {p0 .. p5}, Lwseemann/media/FFmpegMediaMetadataRetriever;->_getScaledFrameAtTime(JIII)[B

    move-result-object v2

    .line 489
    .local v2, "picture":[B
    if-eqz v2, :cond_2

    .line 490
    array-length v3, v2

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    :cond_2
    return-object v0
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 260
    :cond_2
    :goto_0
    return-void

    .line 226
    :cond_3
    const/4 v7, 0x0

    .line 228
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 230
    .local v8, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 234
    if-nez v7, :cond_6

    .line 235
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 253
    if-eqz v7, :cond_4

    .line 254
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 232
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    .line 253
    if-eqz v7, :cond_5

    .line 254
    :try_start_5
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 257
    :cond_5
    :goto_2
    throw v0

    .line 237
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    :try_start_6
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 238
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 244
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    .line 245
    invoke-virtual {p0, v1}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    :goto_3
    if-eqz v7, :cond_2

    .line 254
    :try_start_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 256
    :catch_2
    move-exception v0

    goto :goto_0

    .line 247
    :cond_8
    :try_start_8
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 256
    .end local v1    # "descriptor":Ljava/io/FileDescriptor;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 201
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 202
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 160
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 161
    .local v4, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_0

    .line 166
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lwseemann/media/FFmpegMediaMetadataRetriever;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public native setSurface(Ljava/lang/Object;)V
.end method
