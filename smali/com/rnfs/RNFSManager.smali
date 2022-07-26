.class public Lcom/rnfs/RNFSManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFSManager.java"


# static fields
.field private static final RNFSCachesDirectoryPath:Ljava/lang/String; = "RNFSCachesDirectoryPath"

.field private static final RNFSDocumentDirectory:Ljava/lang/String; = "RNFSDocumentDirectory"

.field private static final RNFSDocumentDirectoryPath:Ljava/lang/String; = "RNFSDocumentDirectoryPath"

.field private static final RNFSExternalDirectoryPath:Ljava/lang/String; = "RNFSExternalDirectoryPath"

.field private static final RNFSExternalStorageDirectoryPath:Ljava/lang/String; = "RNFSExternalStorageDirectoryPath"

.field private static final RNFSFileTypeDirectory:Ljava/lang/String; = "RNFSFileTypeDirectory"

.field private static final RNFSFileTypeRegular:Ljava/lang/String; = "RNFSFileTypeRegular"

.field private static final RNFSPicturesDirectoryPath:Ljava/lang/String; = "RNFSPicturesDirectoryPath"

.field private static final RNFSTemporaryDirectoryPath:Ljava/lang/String; = "RNFSTemporaryDirectoryPath"


# instance fields
.field private downloaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/rnfs/Downloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private DeleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 449
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/rnfs/RNFSManager;->DeleteRecursive(Ljava/io/File;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Exception;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/rnfs/RNFSManager;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 241
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_0

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 245
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 246
    return-void
.end method

.method private copyInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 372
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v4, "outFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x2800

    :try_start_2
    new-array v0, v6, [B

    .line 383
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 384
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 386
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Failed to copy \'%s\' to %s (%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4, p2, v6}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    if-eqz p1, :cond_0

    .line 396
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 400
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 402
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_2
    move-object v2, v3

    .line 407
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_2
    :goto_3
    return-void

    .line 375
    :catch_1
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-direct {p0, p4, p2, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 394
    if-eqz p1, :cond_3

    .line 396
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 400
    :cond_3
    :goto_4
    if-eqz v2, :cond_2

    .line 402
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 403
    :catch_2
    move-exception v6

    goto :goto_3

    .line 392
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v5    # "read":I
    :cond_4
    const/4 v6, 0x0

    :try_start_9
    invoke-interface {p4, v6}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 394
    if-eqz p1, :cond_5

    .line 396
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 400
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 402
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_6
    move-object v2, v3

    .line 407
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 394
    .end local v0    # "buffer":[B
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz p1, :cond_7

    .line 396
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 400
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 402
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 404
    :cond_8
    :goto_9
    throw v6

    .line 397
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 403
    :catch_5
    move-exception v6

    goto :goto_2

    .line 397
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v5    # "read":I
    :catch_6
    move-exception v6

    goto :goto_5

    .line 403
    :catch_7
    move-exception v6

    goto :goto_6

    .line 397
    .end local v0    # "buffer":[B
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "read":I
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_8
    move-exception v7

    goto :goto_8

    .line 403
    :catch_9
    move-exception v7

    goto :goto_9

    .line 394
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_7
.end method

.method private reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 589
    instance-of v0, p3, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    .line 595
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 602
    const-string v0, "EISDIR"

    const-string v1, "EISDIR: illegal operation on a directory, read"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 598
    const-string v0, "ENOENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENOENT: no such file or directory, open \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 475
    const-class v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 476
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 477
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    return-void
.end method


# virtual methods
.method public appendFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "base64Content"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 77
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 79
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 80
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 83
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "bytes":[B
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-direct {p0, p3, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public copyFileAssets(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 318
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 319
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/rnfs/RNFSManager;->copyInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Asset \'%s\' could not be opened"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, v3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public downloadFile(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 10
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 483
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "toFile"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "file":Ljava/io/File;
    new-instance v7, Ljava/net/URL;

    const-string v8, "fromUrl"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 485
    .local v7, "url":Ljava/net/URL;
    const-string v8, "jobId"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 486
    .local v4, "jobId":I
    const-string v8, "headers"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 487
    .local v3, "headers":Lcom/facebook/react/bridge/ReadableMap;
    const-string v8, "progressDivider"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 489
    .local v6, "progressDivider":I
    new-instance v5, Lcom/rnfs/DownloadParams;

    invoke-direct {v5}, Lcom/rnfs/DownloadParams;-><init>()V

    .line 491
    .local v5, "params":Lcom/rnfs/DownloadParams;
    iput-object v7, v5, Lcom/rnfs/DownloadParams;->src:Ljava/net/URL;

    .line 492
    iput-object v2, v5, Lcom/rnfs/DownloadParams;->dest:Ljava/io/File;

    .line 493
    iput-object v3, v5, Lcom/rnfs/DownloadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    .line 494
    int-to-float v8, v6

    iput v8, v5, Lcom/rnfs/DownloadParams;->progressDivider:F

    .line 496
    new-instance v8, Lcom/rnfs/RNFSManager$1;

    invoke-direct {v8, p0, v4, p2, p1}, Lcom/rnfs/RNFSManager$1;-><init>(Lcom/rnfs/RNFSManager;ILcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onTaskCompleted:Lcom/rnfs/DownloadParams$OnTaskCompleted;

    .line 512
    new-instance v8, Lcom/rnfs/RNFSManager$2;

    invoke-direct {v8, p0, v4}, Lcom/rnfs/RNFSManager$2;-><init>(Lcom/rnfs/RNFSManager;I)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onDownloadBegin:Lcom/rnfs/DownloadParams$OnDownloadBegin;

    .line 531
    new-instance v8, Lcom/rnfs/RNFSManager$3;

    invoke-direct {v8, p0, v4}, Lcom/rnfs/RNFSManager$3;-><init>(Lcom/rnfs/RNFSManager;I)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onDownloadProgress:Lcom/rnfs/DownloadParams$OnDownloadProgress;

    .line 543
    new-instance v0, Lcom/rnfs/Downloader;

    invoke-direct {v0}, Lcom/rnfs/Downloader;-><init>()V

    .line 545
    .local v0, "downloader":Lcom/rnfs/Downloader;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/rnfs/DownloadParams;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v8}, Lcom/rnfs/Downloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 547
    iget-object v8, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "downloader":Lcom/rnfs/Downloader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "jobId":I
    .end local v5    # "params":Lcom/rnfs/DownloadParams;
    .end local v6    # "progressDivider":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    const-string v8, "toFile"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public existsAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 332
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "list":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 334
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "list":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v4

    .line 342
    :cond_1
    const/4 v2, 0x0

    .line 344
    .local v2, "fileStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 345
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    if-eqz v2, :cond_0

    .line 351
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v4

    goto :goto_0

    .line 346
    :catch_2
    move-exception v1

    .line 347
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    if-eqz v2, :cond_0

    .line 351
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 352
    :catch_3
    move-exception v4

    goto :goto_0

    .line 349
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 351
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 353
    :cond_2
    :goto_1
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 356
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "fileStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 357
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    invoke-direct {p0, p2, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 352
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    goto :goto_1
.end method

.method public getConstants()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "RNFSDocumentDirectory"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v3, "RNFSDocumentDirectoryPath"

    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v3, "RNFSTemporaryDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v3, "RNFSPicturesDirectoryPath"

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v3, "RNFSCachesDirectoryPath"

    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v3, "RNFSFileTypeRegular"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v3, "RNFSFileTypeDirectory"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 618
    .local v2, "externalStorageDirectory":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 619
    const-string v3, "RNFSExternalStorageDirectoryPath"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :goto_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 625
    .local v1, "externalDirectory":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 626
    const-string v3, "RNFSExternalDirectoryPath"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :goto_1
    return-object v0

    .line 621
    .end local v1    # "externalDirectory":Ljava/io/File;
    :cond_0
    const-string v3, "RNFSExternalStorageDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    .restart local v1    # "externalDirectory":Ljava/io/File;
    :cond_1
    const-string v3, "RNFSExternalDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getFSInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 570
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 571
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 574
    .local v6, "stat":Landroid/os/StatFs;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v7, v10, :cond_0

    .line 575
    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    .line 576
    .local v8, "totalSpace":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    .line 582
    .local v2, "freeSpace":J
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 583
    .local v4, "info":Lcom/facebook/react/bridge/WritableMap;
    const-string v7, "totalSpace"

    long-to-double v10, v8

    invoke-interface {v4, v7, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 584
    const-string v7, "freeSpace"

    long-to-double v10, v2

    invoke-interface {v4, v7, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 585
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 586
    return-void

    .line 578
    .end local v2    # "freeSpace":J
    .end local v4    # "info":Lcom/facebook/react/bridge/WritableMap;
    .end local v8    # "totalSpace":J
    :cond_0
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 579
    .local v0, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v10, v7

    mul-long v8, v0, v10

    .line 580
    .restart local v8    # "totalSpace":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v10, v7

    mul-long v2, v0, v10

    .restart local v2    # "freeSpace":J
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "RNFSManager"

    return-object v0
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 20
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 161
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v4, "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "md5"

    const-string v14, "MD5"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v13, "sha1"

    const-string v14, "SHA-1"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v13, "sha224"

    const-string v14, "SHA-224"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v13, "sha256"

    const-string v14, "SHA-256"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v13, "sha384"

    const-string v14, "SHA-384"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v13, "sha512"

    const-string v14, "SHA-512"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Invalid hash algorithm"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v4    # "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 200
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 172
    .restart local v4    # "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/rnfs/RNFSManager;->rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 186
    .local v11, "md":Ljava/security/MessageDigest;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v5, v13, [B

    .line 190
    .local v5, "buffer":[B
    :goto_1
    invoke-virtual {v10, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .local v12, "read":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 191
    const/4 v13, 0x0

    invoke-virtual {v11, v5, v13, v12}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 194
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v9, "hexString":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_4

    aget-byte v6, v14, v13

    .line 196
    .local v6, "digestByte":B
    const-string v16, "%02x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 198
    .end local v6    # "digestByte":B
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 459
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 463
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 465
    .local v1, "exists":Z
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Directory could not be created"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v1    # "exists":Z
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 472
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 467
    .restart local v1    # "exists":Z
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 208
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "inFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 216
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "inFile":Ljava/io/File;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pathForBundle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "bundleNamed"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 566
    return-void
.end method

.method public readDir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 251
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    invoke-direct {p0, p2, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 275
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 255
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 257
    .local v5, "files":[Ljava/io/File;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 259
    .local v4, "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    array-length v9, v5

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v0, v5, v8

    .line 260
    .local v0, "childFile":Ljava/io/File;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 262
    .local v3, "fileMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v6, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v6, "path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v6, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v10, "type"

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v3, v10, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 267
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 259
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    :cond_1
    move v6, v7

    .line 265
    goto :goto_2

    .line 270
    .end local v0    # "childFile":Ljava/io/File;
    .end local v3    # "fileMap":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public readDirAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 20
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 280
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 281
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "list":[Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    .line 284
    .local v10, "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    array-length v0, v13

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v6, v13, v16

    .line 285
    .local v6, "childFile":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 287
    .local v9, "fileMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v15, "name"

    invoke-interface {v9, v15, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v14, v6

    .line 289
    .local v14, "path":Ljava/lang/String;
    :goto_1
    const-string v15, "path"

    invoke-interface {v9, v15, v14}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    const/4 v12, 0x0

    .line 291
    .local v12, "length":I
    const/4 v11, 0x0

    .line 293
    .local v11, "isDirectory":Z
    :try_start_1
    invoke-virtual {v5, v14}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 294
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 296
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_2
    :try_start_2
    const-string v15, "size"

    invoke-interface {v9, v15, v12}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v18, "type"

    if-eqz v11, :cond_2

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v9, v0, v15}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 305
    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 284
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_0

    .line 288
    .end local v11    # "isDirectory":Z
    .end local v12    # "length":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_1
    const-string v15, "%s/%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 298
    .restart local v11    # "isDirectory":Z
    .restart local v12    # "length":I
    .restart local v14    # "path":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 300
    .local v8, "ex":Ljava/io/IOException;
    const/4 v11, 0x1

    goto :goto_2

    .line 303
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 307
    .end local v6    # "childFile":Ljava/lang/String;
    .end local v9    # "fileMap":Lcom/facebook/react/bridge/WritableMap;
    .end local v11    # "isDirectory":Z
    .end local v12    # "length":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 312
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    .end local v13    # "list":[Ljava/lang/String;
    :goto_4
    return-void

    .line 309
    :catch_1
    move-exception v7

    .line 310
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public readFile(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 104
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/rnfs/RNFSManager;->rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V

    .line 127
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 111
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    invoke-direct {p0, p2, p1}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    invoke-direct {p0, p2, p1, v2}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 116
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v1, v5, [B

    .line 118
    .local v1, "buffer":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 120
    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "base64Content":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public readFileAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 134
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 135
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 136
    if-nez v4, :cond_1

    .line 137
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Failed to open file"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, v5}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v4, :cond_0

    .line 151
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 156
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v2, v5, [B

    .line 142
    .local v2, "buffer":[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 143
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "base64Content":Ljava/lang/String;
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v4, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v5

    goto :goto_0

    .line 145
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "base64Content":Ljava/lang/String;
    .end local v2    # "buffer":[B
    :catch_1
    move-exception v3

    .line 146
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    invoke-direct {p0, p2, p1, v3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    if-eqz v4, :cond_0

    .line 151
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 152
    :catch_2
    move-exception v5

    goto :goto_0

    .line 149
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 151
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 153
    :cond_2
    :goto_1
    throw v5

    .line 152
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 412
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "File does not exist"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 428
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 416
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 418
    .local v2, "statMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "ctime"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v3, "mtime"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v4, "type"

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 421
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public stopDownload(I)V
    .locals 2
    .param p1, "jobId"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 556
    iget-object v1, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnfs/Downloader;

    .line 558
    .local v0, "downloader":Lcom/rnfs/Downloader;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/rnfs/Downloader;->stop()V

    .line 561
    :cond_0
    return-void
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 433
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "File does not exist"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 444
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 437
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/rnfs/RNFSManager;->DeleteRecursive(Ljava/io/File;)V

    .line 439
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "base64Content"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 61
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 63
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 64
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 67
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "bytes":[B
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-direct {p0, p3, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
