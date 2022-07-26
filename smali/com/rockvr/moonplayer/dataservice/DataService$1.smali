.class Lcom/rockvr/moonplayer/dataservice/DataService$1;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataService;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/DataService;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 72
    const-string v3, "VIDEO_MEDIA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 73
    .local v1, "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3, v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$000(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0

    .line 78
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :pswitch_1
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$100(Lcom/rockvr/moonplayer/dataservice/DataService;)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 84
    const-string v3, "VIDEO_MEDIA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 85
    .restart local v1    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3, v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$200(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0

    .line 90
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 92
    const-string v3, "VIDEO_MEDIAS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 93
    .local v2, "videoMedias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3, v2}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$300(Lcom/rockvr/moonplayer/dataservice/DataService;Ljava/util/List;)V

    goto :goto_0

    .line 98
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "videoMedias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 100
    const-string v3, "VIDEO_MEDIA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 101
    .restart local v1    # "videoMedia":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    iget-object v3, p0, Lcom/rockvr/moonplayer/dataservice/DataService$1;->this$0:Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-static {v3, v1}, Lcom/rockvr/moonplayer/dataservice/DataService;->access$400(Lcom/rockvr/moonplayer/dataservice/DataService;Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
