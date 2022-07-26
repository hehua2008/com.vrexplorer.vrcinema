.class Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method private constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x1"    # Lcom/rockvr/moonplayer/dataservice/DataService$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 417
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$700(Lcom/rockvr/moonplayer/dataservice/DataService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1, v4}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$702(Lcom/rockvr/moonplayer/dataservice/DataService;Z)Z

    .line 423
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    new-instance v2, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask$1;

    invoke-direct {v2, p0}, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask$1;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;)V

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1800(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;)V

    .line 430
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1900(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    .line 432
    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;-><init>(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/DataService$1;)V

    invoke-virtual {v1}, Lcom/rockvr/moonplayer/dataservice/DataService$FilterTask;->run()V

    .line 434
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$702(Lcom/rockvr/moonplayer/dataservice/DataService;Z)Z

    .line 435
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$2100(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$2100(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, "message":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 438
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$2100(Lcom/rockvr/moonplayer/dataservice/DataService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
