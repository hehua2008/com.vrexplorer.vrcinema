.class public Lcom/rockvr/moonplayer/dataservice/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;
    }
.end annotation


# static fields
.field private static final PATTERN_VIDEO:Ljava/lang/String; = ".*\\.(|mp4|3gp|webm|ts|mkv|mov|wmv|rmvb|rm|avi|flv|mpg|)$"

.field public static final VIDEO_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/rockvr/moonplayer/dataservice/SearchUtils;


# instance fields
.field private volatile isHaveNoMedia:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ".*\\.(|mp4|3gp|webm|ts|mkv|mov|wmv|rmvb|rm|avi|flv|mpg|)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->VIDEO_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    .line 17
    return-void
.end method

.method static synthetic access$002(Lcom/rockvr/moonplayer/dataservice/SearchUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/SearchUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    return p1
.end method

.method public static getInstance()Lcom/rockvr/moonplayer/dataservice/SearchUtils;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->instance:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->instance:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    .line 23
    :cond_0
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->instance:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    return-object v0
.end method


# virtual methods
.method public searchDir(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "targetDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_0
    return-object v2

    .line 44
    :cond_1
    new-instance v2, Lcom/rockvr/moonplayer/dataservice/SearchUtils$1;

    invoke-direct {v2, p0}, Lcom/rockvr/moonplayer/dataservice/SearchUtils$1;-><init>(Lcom/rockvr/moonplayer/dataservice/SearchUtils;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "files":[Ljava/io/File;
    iget-boolean v2, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    if-eqz v2, :cond_2

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    .line 75
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 78
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public searchVideos(Ljava/util/List;Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;)V
    .locals 9
    .param p2, "processMediaFile"    # Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "toBeSearched":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 140
    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v3, "tmpLinkList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 94
    .local v2, "tmpFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    new-instance v4, Lcom/rockvr/moonplayer/dataservice/SearchUtils$2;

    invoke-direct {v4, p0}, Lcom/rockvr/moonplayer/dataservice/SearchUtils$2;-><init>(Lcom/rockvr/moonplayer/dataservice/SearchUtils;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 117
    .local v1, "files":[Ljava/io/File;
    iget-boolean v4, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    if-eqz v4, :cond_3

    .line 118
    iput-boolean v5, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->isHaveNoMedia:Z

    goto :goto_0

    .line 122
    :cond_3
    if-eqz v1, :cond_2

    array-length v4, v1

    if-eqz v4, :cond_2

    .line 126
    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v1, v4

    .line 127
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "legacy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_6
    if-eqz p2, :cond_4

    .line 135
    invoke-interface {p2, v0}, Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;->processMediaFile(Ljava/io/File;)V

    goto :goto_2
.end method
