.class Lcom/rockvr/moonplayer/dataservice/SearchUtils$2;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/SearchUtils;->searchVideos(Ljava/util/List;Lcom/rockvr/moonplayer/dataservice/SearchUtils$IProcessMediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/SearchUtils;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/SearchUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils$2;->this$0:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils$2;->this$0:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    invoke-static {v2, v1}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->access$002(Lcom/rockvr/moonplayer/dataservice/SearchUtils;Z)Z

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->isSearchHiddenFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->VIDEO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
