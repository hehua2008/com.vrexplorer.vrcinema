.class public final Lcom/mcxiaoke/packer/helper/PackerNg;
.super Ljava/lang/Object;
.source "PackerNg.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "PackerNg"

.field private static sCachedChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/mcxiaoke/packer/helper/PackerNg;->getChannelOrThrow(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/mcxiaoke/packer/common/PackerCommon;->readChannel(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    :goto_0
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized getChannelOrThrow(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-class v2, Lcom/mcxiaoke/packer/helper/PackerNg;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mcxiaoke/packer/common/PackerCommon;->readChannel(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 38
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
