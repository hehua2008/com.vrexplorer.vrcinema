.class public Lcom/rockvr/moonplayer/dataservice/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field private static final ROOT_STORAGE:Ljava/lang/String; = "/storage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectoriesToBeSearched()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v3, Ljava/io/File;

    const-string v6, "/storage"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v3, "root":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 61
    :cond_0
    :goto_0
    return-object v5

    .line 23
    :cond_1
    new-instance v6, Lcom/rockvr/moonplayer/dataservice/StorageUtils$1;

    invoke-direct {v6}, Lcom/rockvr/moonplayer/dataservice/StorageUtils$1;-><init>()V

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 33
    .local v4, "rootDirectories":[Ljava/io/File;
    if-eqz v4, :cond_2

    array-length v6, v4

    if-nez v6, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 35
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v5, "toBeSearched":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_7

    aget-object v1, v4, v6

    .line 38
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_4

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "emulated"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 41
    new-instance v2, Ljava/io/File;

    const-string v8, "0"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v1, v2

    .line 48
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 37
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    :cond_6
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method
