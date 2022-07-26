.class public Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;
.super Ljava/lang/Object;
.source "RCTIJKPlayer.java"


# static fields
.field private static final ourInstance:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;


# instance fields
.field private mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;

    invoke-direct {v0}, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->ourInstance:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->ourInstance:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;

    return-object v0
.end method

.method public static getViewInstance()Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->ourInstance:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;

    iget-object v0, v0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    return-object v0
.end method


# virtual methods
.method public setIJKPlayerView(Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;)V
    .locals 0
    .param p1, "mIJKPlayerView"    # Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayer;->mIJKPlayerView:Lcom/rockvr/moonplayer_gvr/media/RCTIJKPlayerView;

    .line 22
    return-void
.end method
