.class Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;-><init>(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 64
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$100(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 66
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$200(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_2

    .line 119
    :cond_1
    return-void

    .line 70
    :cond_2
    const/4 v6, 0x0

    .line 73
    .local v6, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :try_start_0
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$100(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    move-object v6, v0

    .line 75
    new-instance v4, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;

    invoke-virtual {v6}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "hashV1ResultUtil":Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->start()V

    .line 79
    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->hasError()Z

    move-result v7

    if-nez v7, :cond_5

    .line 81
    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setHashValue(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->getSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setFileSize(J)V

    .line 85
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$300(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 89
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$300(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->getHash()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v5, "thumbPath":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 92
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setThumbnailPath(Ljava/lang/String;)V

    .line 107
    .end local v5    # "thumbPath":Ljava/io/File;
    :goto_1
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$600(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 108
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$600(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;->publishToDataBase(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 111
    :cond_3
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$600(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$600(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;)Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessThumbnailResult;->sendMsgUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    .end local v4    # "hashV1ResultUtil":Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "hashV1ResultUtil":Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
    .restart local v5    # "thumbPath":Ljava/io/File;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7, v6}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$400(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 98
    iget-object v7, p0, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils$ProcessTask;->this$0:Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;

    invoke-static {v7, v5, v2}, Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;->access$500(Lcom/rockvr/moonplayer/dataservice/ThumbnailUtils;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->setThumbnailPath(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "thumbPath":Ljava/io/File;
    :cond_5
    const-string v7, "ThumbnailUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateThumbnails: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
