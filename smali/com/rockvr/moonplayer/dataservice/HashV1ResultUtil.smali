.class public Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
.super Ljava/lang/Object;
.source "HashV1ResultUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;
    }
.end annotation


# static fields
.field private static final HEAD_BYTES:I = 0x40000

.field private static final TAIL_BYTES:I = 0x40000

.field private static final hexArray:[C


# instance fields
.field private mError:Ljava/lang/Exception;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFilename:Ljava/lang/String;

.field private mFinished:Z

.field private mHashValue:Ljava/lang/String;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    .line 50
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFilename:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFinished:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mHashValue:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mSize:J

    .line 54
    iput-object v2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    .line 41
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFilename:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFinished:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mHashValue:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mSize:J

    .line 45
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method public static AsyncHashV1ResultTask(Ljava/lang/String;)Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 153
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 154
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 155
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 156
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 157
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private computeHash()Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v9, "is":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 124
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 125
    .local v10, "size":J
    const v13, 0x80008

    new-array v6, v13, [B

    .line 127
    .local v6, "hashSource":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v13, 0x8

    if-ge v8, v13, :cond_0

    .line 128
    rsub-int/lit8 v13, v8, 0x7

    mul-int/lit8 v13, v13, 0x8

    shr-long v14, v10, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v6, v8

    .line 127
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const/high16 v13, 0x40000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 133
    .local v7, "head":Ljava/nio/ByteBuffer;
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v7, v14, v15}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 134
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    const/16 v13, 0x8

    const/high16 v14, 0x40000

    invoke-virtual {v7, v6, v13, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 138
    const/high16 v13, 0x40000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 139
    .local v12, "tail":Ljava/nio/ByteBuffer;
    const-wide/16 v14, 0x0

    const-wide/32 v16, 0x40000

    sub-long v16, v10, v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v2, v12, v14, v15}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 140
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    const v13, 0x40008

    const/high16 v14, 0x40000

    invoke-virtual {v12, v6, v13, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 143
    const-string v13, "SHA-256"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 144
    .local v3, "d":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 145
    .local v5, "hashBytes":[B
    new-instance v13, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;

    .line 146
    invoke-static {v5}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v10, v11}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;-><init>(Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;Ljava/lang/String;J)V

    return-object v13
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "null"

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mHashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mSize:J

    return-wide v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFinished:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->computeHash()Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;

    move-result-object v1

    .line 104
    .local v1, "hashResult":Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;
    iget-object v2, v1, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;->mHash:Ljava/lang/String;

    iput-object v2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mHashValue:Ljava/lang/String;

    .line 105
    iget-wide v2, v1, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;->mSize:J

    iput-wide v2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mSize:J

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFinished:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v1    # "hashResult":Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-boolean v4, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mFinished:Z

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mError:Ljava/lang/Exception;

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->run()V

    goto :goto_0
.end method
