.class public Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/IPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_BUFFERING:I = 0x6

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentAspectRatio:I

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/rockvr/moonplayer_gvr/media/IRenderView;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;

.field private mSurfaceRenderView:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 44
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 47
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceHolder:Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;

    .line 48
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanPause:Z

    .line 61
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekBack:Z

    .line 62
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekForward:Z

    .line 76
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareStartTime:J

    .line 77
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareEndTime:J

    .line 79
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekStartTime:J

    .line 80
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekEndTime:J

    .line 263
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 284
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 309
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 320
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 373
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 389
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 397
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 604
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 84
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 44
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 47
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceHolder:Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;

    .line 48
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanPause:Z

    .line 61
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekBack:Z

    .line 62
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekForward:Z

    .line 76
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareStartTime:J

    .line 77
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareEndTime:J

    .line 79
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekStartTime:J

    .line 80
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekEndTime:J

    .line 263
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 284
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 309
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 320
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 373
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 389
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 397
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 604
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 89
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 44
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 47
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceHolder:Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;

    .line 48
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanPause:Z

    .line 61
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekBack:Z

    .line 62
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekForward:Z

    .line 76
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareStartTime:J

    .line 77
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareEndTime:J

    .line 79
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekStartTime:J

    .line 80
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekEndTime:J

    .line 263
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 284
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 309
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 320
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 373
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 389
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 397
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 604
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 94
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 44
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 47
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceHolder:Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;

    .line 48
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanPause:Z

    .line 61
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekBack:Z

    .line 62
    iput-boolean v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekForward:Z

    .line 76
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareStartTime:J

    .line 77
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareEndTime:J

    .line 79
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekStartTime:J

    .line 80
    iput-wide v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekEndTime:J

    .line 263
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 284
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$4;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 309
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$5;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 320
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$6;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 373
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$7;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 389
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$8;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 397
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$9;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 604
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 100
    invoke-direct {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/asha/vrlib/MDVRLibrary;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$600(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$602(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mRenderView:Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method private createVRLibrary()Lcom/asha/vrlib/MDVRLibrary;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/asha/vrlib/MDVRLibrary;->with(Landroid/content/Context;)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    const/16 v1, 0x65

    .line 128
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->displayMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 129
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->interactiveMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    const/16 v1, 0xcf

    .line 130
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->projectionMode(I)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$2;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->asVideo(Lcom/asha/vrlib/MDVRLibrary$IOnSurfaceReadyCallback;)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$1;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$1;-><init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->ifNotSupport(Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;)Lcom/asha/vrlib/MDVRLibrary$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceRenderView:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    .line 149
    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$Builder;->build(Landroid/opengl/GLSurfaceView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    return-object v0
.end method

.method private currentState()I
    .locals 2

    .prologue
    .line 542
    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    .line 560
    :pswitch_0
    const/4 v0, 0x0

    .line 563
    .local v0, "state":I
    :goto_0
    return v0

    .line 544
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x3

    .line 545
    .restart local v0    # "state":I
    goto :goto_0

    .line 547
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x1

    .line 548
    .restart local v0    # "state":I
    goto :goto_0

    .line 550
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x2

    .line 551
    .restart local v0    # "state":I
    goto :goto_0

    .line 553
    .end local v0    # "state":I
    :pswitch_4
    const/4 v0, 0x6

    .line 554
    .restart local v0    # "state":I
    goto :goto_0

    .line 556
    .end local v0    # "state":I
    :pswitch_5
    const/4 v0, 0x7

    .line 557
    .restart local v0    # "state":I
    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private initRenders()V
    .locals 2

    .prologue
    .line 614
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceRenderView:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    .line 615
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceRenderView:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->addView(Landroid/view/View;)V

    .line 616
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 112
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoWidth:I

    .line 113
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mVideoHeight:I

    .line 114
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->initRenders()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->requestFocus()Z

    .line 118
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 119
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 120
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->createVRLibrary()Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    .line 121
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 574
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 206
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurfaceRenderView:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0, v4}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->release(Z)V

    .line 214
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 215
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 222
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 227
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 228
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 229
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 230
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 231
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 233
    const/4 v3, 0x0

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 234
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, v4, v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 235
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    if-nez v3, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->createVRLibrary()Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v3

    iput-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    .line 241
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 242
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 243
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 247
    const/4 v3, 0x1

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v3, -0x1

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 251
    const/4 v3, -0x1

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 252
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 258
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    throw v3

    .line 237
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 253
    .end local v1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 254
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v3, -0x1

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 256
    const/4 v3, -0x1

    iput v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 257
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 182
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 184
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->openVideo()V

    .line 185
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->requestLayout()V

    .line 186
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->invalidate()V

    .line 187
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 6

    .prologue
    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    const/4 v0, 0x0

    .line 621
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 622
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 624
    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/4 v2, 0x4

    const-string v3, "mediacodec-all-videos"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 644
    :cond_0
    move-object v1, v0

    .line 646
    return-object v1
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 568
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->currentState()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 493
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 496
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 499
    :cond_0
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 500
    return-void
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 465
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 467
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 468
    iput-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 470
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 471
    if-eqz p1, :cond_0

    .line 472
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 475
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 477
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->start()V

    .line 509
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekStartTime:J

    .line 529
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 423
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 435
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 445
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 413
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 159
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 485
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 487
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 489
    :cond_0
    iput v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 490
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 195
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 196
    iput-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 197
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mCurrentState:I

    .line 198
    iput v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mTargetState:I

    .line 199
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 200
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 202
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->release(Z)V

    .line 504
    return-void
.end method

.method public switchPlayMode(Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;)V
    .locals 3
    .param p1, "playMode"    # Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    .prologue
    const/16 v2, 0xcf

    .line 449
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$10;->$SwitchMap$com$rockvr$moonplayer_gvr$media$PlayerManager$PlayMode:[I

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 457
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MDVRLibrary;->switchProjectionMode(Landroid/content/Context;I)V

    .line 459
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MDVRLibrary;->switchProjectionMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mMDVRLibrary:Lcom/asha/vrlib/MDVRLibrary;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->mContext:Landroid/content/Context;

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MDVRLibrary;->switchProjectionMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
