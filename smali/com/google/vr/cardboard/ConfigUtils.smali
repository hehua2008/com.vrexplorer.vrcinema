.class public Lcom/google/vr/cardboard/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static final CARDBOARD_CONFIG_FOLDER:Ljava/lang/String; = "Cardboard"

.field private static final CARDBOARD_DEVICE_PARAMS_FILE:Ljava/lang/String; = "current_device_params"

.field private static final CARDBOARD_DEVICE_PARAMS_STREAM_SENTINEL:I = 0x35587a2b

.field private static final CARDBOARD_PHONE_PARAMS_FILE:Ljava/lang/String; = "phone_params"

.field private static final CARDBOARD_PHONE_PARAMS_STREAM_SENTINEL:I = 0x2e765996

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final URI_KEY_PARAMS:Ljava/lang/String; = "p"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/vr/cardboard/ConfigUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    .line 219
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cardboard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exists as a file, but is expected to be a directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readDeviceParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 4

    .prologue
    .line 73
    const-class v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    const-string v1, "current_device_params"

    const v2, 0x35587a2b

    const/4 v3, 0x1

    .line 74
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/cardboard/ConfigUtils;->readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 86
    return-object v0
.end method

.method public static readDeviceParamsFromUri(Landroid/net/Uri;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "p"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "No Cardboard parameters in URI."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 114
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/16 v2, 0xb

    .line 105
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 106
    new-instance v2, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v2}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    .line 107
    invoke-static {v2, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Parsing cardboard parameters from URI failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 114
    goto :goto_0
.end method

.method private static readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    .line 247
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/google/vr/cardboard/ConfigUtils;->readFromInputStream(Ljava/lang/Class;Ljava/io/InputStream;I)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 252
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    :goto_0
    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 252
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 255
    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    if-eqz p3, :cond_1

    .line 260
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Parameters file not found for reading: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    move-object v0, v1

    .line 265
    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    .line 263
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error reading parameters: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_2

    .line 250
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static readFromInputStream(Ljava/lang/Class;Ljava/io/InputStream;I)Lcom/google/protobuf/nano/MessageNano;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/InputStream;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 280
    if-nez p1, :cond_0

    move-object v0, v1

    .line 313
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 289
    sget-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing param record: end of stream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 294
    if-eq v2, p2, :cond_2

    .line 295
    sget-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing param record: incorrect sentinel."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_2
    new-array v2, v0, [B

    .line 299
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 300
    sget-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing param record: end of stream."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing protocol buffer: "

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v0, v1

    .line 313
    goto :goto_0

    .line 305
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :catch_1
    move-exception v0

    .line 307
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error reading parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 308
    :catch_2
    move-exception v0

    .line 309
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error creating parameters: "

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 310
    :catch_3
    move-exception v0

    .line 311
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error accessing parameter type: "

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static readPhoneParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 4

    .prologue
    .line 124
    const-class v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    const-string v1, "phone_params"

    const v2, 0x2e765996

    const/4 v3, 0x0

    .line 125
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/cardboard/ConfigUtils;->readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .line 137
    return-object v0
.end method

.method public static removeDeviceParamsFromExternalStorage()Z
    .locals 5

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    :try_start_0
    const-string v0, "current_device_params"

    invoke-static {v0}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    :goto_0
    if-nez v0, :cond_0

    .line 198
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not clear Cardboard parameters from external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return v0

    .line 193
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error clearing device parameters: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static writeDeviceParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 3

    .prologue
    .line 146
    const-string v0, "current_device_params"

    const v1, 0x35587a2b

    .line 147
    invoke-static {p0, v0, v1}, Lcom/google/vr/cardboard/ConfigUtils;->writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z

    move-result v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not write Cardboard parameters to external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return v0
.end method

.method public static writePhoneParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v0, v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object p0

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 171
    :cond_0
    const-string v0, "phone_params"

    const v1, 0x2e765996

    .line 172
    invoke-static {p0, v0, v1}, Lcom/google/vr/cardboard/ConfigUtils;->writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z

    move-result v0

    .line 174
    if-nez v0, :cond_1

    .line 175
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not write Phone parameters to external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return v0

    .line 169
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    const/4 v3, 0x0

    .line 328
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/google/vr/cardboard/ConfigUtils;->writeToOutputStream(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;I)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 337
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 330
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 331
    :goto_1
    :try_start_3
    sget-object v3, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Parameters file not found for writing: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    if-eqz v2, :cond_0

    .line 337
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 340
    :catch_1
    move-exception v1

    goto :goto_0

    .line 332
    :catch_2
    move-exception v1

    .line 333
    :goto_2
    :try_start_5
    sget-object v2, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error writing parameters: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    if-eqz v3, :cond_0

    .line 337
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 340
    :catch_3
    move-exception v1

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_1

    .line 337
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 340
    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 335
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 332
    :catch_6
    move-exception v1

    move-object v3, v2

    goto :goto_2

    .line 330
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private static writeToOutputStream(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;I)Z
    .locals 4

    .prologue
    .line 361
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 362
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 363
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 364
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 366
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error writing parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
