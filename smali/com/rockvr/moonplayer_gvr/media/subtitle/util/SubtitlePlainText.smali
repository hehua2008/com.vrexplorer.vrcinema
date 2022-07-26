.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;
.super Ljava/lang/Object;
.source "SubtitlePlainText.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;->text:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;->text:Ljava/lang/String;

    return-object v0
.end method
