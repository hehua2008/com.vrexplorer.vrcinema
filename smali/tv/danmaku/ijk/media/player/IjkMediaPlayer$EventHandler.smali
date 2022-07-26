.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 942
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 943
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 944
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 948
    iget-object v8, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 949
    .local v6, "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 950
    :cond_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IjkMediaPlayer went away with unhandled events"

    invoke-static {v8, v9}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_0
    :sswitch_0
    return-void

    .line 955
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1031
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown message type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :sswitch_1
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnPrepared()V

    goto :goto_0

    .line 961
    :sswitch_2
    const/4 v8, 0x0

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    .line 962
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    goto :goto_0

    .line 966
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v8

    .line 967
    .local v0, "bufferPosition":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 968
    const-wide/16 v0, 0x0

    .line 971
    :cond_2
    const-wide/16 v4, 0x0

    .line 972
    .local v4, "percent":J
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v2

    .line 973
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 974
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long v4, v8, v2

    .line 976
    :cond_3
    const-wide/16 v8, 0x64

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    .line 977
    const-wide/16 v4, 0x64

    .line 981
    :cond_4
    long-to-int v8, v4

    invoke-virtual {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0

    .line 985
    .end local v0    # "bufferPosition":J
    .end local v2    # "duration":J
    .end local v4    # "percent":J
    :sswitch_4
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0

    .line 989
    :sswitch_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 990
    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 991
    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v8

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v9

    .line 992
    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v10

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v11

    .line 991
    invoke-virtual {v6, v8, v9, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0

    .line 996
    :sswitch_6
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z

    move-result v8

    if-nez v8, :cond_5

    .line 998
    invoke-virtual {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1000
    :cond_5
    const/4 v8, 0x0

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    .line 1004
    :sswitch_7
    iget v8, p1, Landroid/os/Message;->arg1:I

    packed-switch v8, :pswitch_data_0

    .line 1009
    :goto_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    .line 1006
    :pswitch_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n"

    invoke-static {v8, v9}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1013
    :sswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_6

    .line 1014
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    goto/16 :goto_0

    .line 1016
    :cond_6
    new-instance v7, Ltv/danmaku/ijk/media/player/IjkTimedText;

    new-instance v9, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {v9, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v9, v8}, Ltv/danmaku/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1017
    .local v7, "text":Ltv/danmaku/ijk/media/player/IjkTimedText;
    invoke-virtual {v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    goto/16 :goto_0

    .line 1024
    .end local v7    # "text":Ltv/danmaku/ijk/media/player/IjkTimedText;
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1025
    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1026
    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v8

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v9

    .line 1027
    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v10

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v11

    .line 1026
    invoke-virtual {v6, v8, v9, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_0

    .line 955
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x2711 -> :sswitch_9
    .end sparse-switch

    .line 1004
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
