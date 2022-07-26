.class public Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;
.super Ljava/lang/Object;
.source "SubtitleUtil.java"


# static fields
.field public static final PATTERN_ALL_SUBTITLE:Ljava/lang/String; = ".*\\.(srt|ttml|vtt|ssa|ass)$"

.field public static final PATTERN_SUBTITLE:Ljava/lang/String; = ".*\\.(srt|ass|ssa)$"

.field private static SUBTITLE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->SUBTITLE_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static searchAllFormatSubtitleFiles(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v1, ".*\\.(srt|ttml|vtt|ssa|ass)$"

    invoke-static {p0, v1}, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->searchSubtitleFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 25
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static searchSrtFormatSubtitleFiles(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, ".*\\.(srt|ass|ssa)$"

    invoke-static {p0, v1}, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->searchSubtitleFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static searchSubtitleFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v4, v5

    .line 65
    :goto_0
    return-object v4

    .line 40
    :cond_1
    sget-object v6, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->SUBTITLE_CACHE:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 41
    .local v3, "subtitles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_4

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    new-instance v6, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil$1;

    invoke-direct {v6, p1}, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 53
    array-length v7, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v1, v2, v6

    .line 54
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    sget-object v6, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->SUBTITLE_CACHE:Ljava/util/Map;

    invoke-interface {v6, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    sget-object v5, Lcom/rockvr/moonplayer/dataservice/SubtitleUtil;->SUBTITLE_CACHE:Ljava/util/Map;

    invoke-interface {v5, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "f":Ljava/io/File;
    .end local v4    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v4, v3

    .line 65
    goto :goto_0
.end method
