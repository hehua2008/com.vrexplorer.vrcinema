.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V
    .locals 1
    .param p2, "mp"    # Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .prologue
    .line 359
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    .line 361
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 397
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 398
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 406
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 407
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnCompletion()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 372
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 373
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnError(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 365
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 366
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnInfo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 415
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 416
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnPrepared()V

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 388
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 389
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "text"    # Landroid/media/TimedText;

    .prologue
    .line 424
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 425
    .local v1, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 430
    .local v0, "ijkText":Ltv/danmaku/ijk/media/player/IjkTimedText;
    if-eqz p2, :cond_1

    .line 431
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkTimedText;

    .end local v0    # "ijkText":Ltv/danmaku/ijk/media/player/IjkTimedText;
    invoke-virtual {p2}, Landroid/media/TimedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 434
    .restart local v0    # "ijkText":Ltv/danmaku/ijk/media/player/IjkTimedText;
    :cond_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v2, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 380
    .local v0, "self":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3, v2, v2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0
.end method
