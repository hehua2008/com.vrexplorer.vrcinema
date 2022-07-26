.class Lcom/rockvr/moonplayer_gvr/media/PlayerManager$InnerPlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/PlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerPlayerManager"
.end annotation


# static fields
.field static INSTANCE:Lcom/rockvr/moonplayer_gvr/media/PlayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager;

    invoke-direct {v0}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$InnerPlayerManager;->INSTANCE:Lcom/rockvr/moonplayer_gvr/media/PlayerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
