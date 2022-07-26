.class Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask$1;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/DataService$QueryMediaStoreCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask$1;->this$1:Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V
    .locals 1
    .param p1, "videoMedia"    # Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask$1;->this$1:Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;

    iget-object v0, v0, Lcom/rockvr/moonplayer/dataservice/DataService$SearchTask;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v0, p1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$1700(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 427
    return-void
.end method
