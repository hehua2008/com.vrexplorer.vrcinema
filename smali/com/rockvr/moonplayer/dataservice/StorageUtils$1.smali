.class final Lcom/rockvr/moonplayer/dataservice/StorageUtils$1;
.super Ljava/lang/Object;
.source "StorageUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/StorageUtils;->getDirectoriesToBeSearched()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method
