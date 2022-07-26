.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->createVRLibrary()Lcom/asha/vrlib/MDVRLibrary;
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
    .line 142
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotSupport(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 145
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v0, "onNotSupport:MOTION"

    .line 147
    .local v0, "tip":Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    .end local v0    # "tip":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
