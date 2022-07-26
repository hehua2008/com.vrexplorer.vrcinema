.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 326
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 369
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 328
    :sswitch_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :sswitch_1
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :sswitch_2
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 335
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :sswitch_3
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 339
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BUFFERING_END:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :sswitch_4
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :sswitch_5
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :sswitch_6
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :sswitch_7
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :sswitch_8
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    :sswitch_9
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    :sswitch_a
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0, p3}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1602(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 361
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/rockvr/moonplayer_gvr/media/IRenderView;->setVideoRotation(I)V

    goto/16 :goto_0

    .line 366
    :sswitch_b
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_AUDIO_RENDERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x2bf -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
    .end sparse-switch
.end method
