.class Lcom/rockvr/moonplayer/dataservice/SearchUtils$1;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/SearchUtils;->searchDir(Ljava/lang/String;)Ljava/util/List;
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
    .line 44
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils$1;->this$0:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/SearchUtils$1;->this$0:Lcom/rockvr/moonplayer/dataservice/SearchUtils;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->access$002(Lcom/rockvr/moonplayer/dataservice/SearchUtils;Z)Z

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->getInstance()Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->isSearchHiddenFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/SearchUtils;->VIDEO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
