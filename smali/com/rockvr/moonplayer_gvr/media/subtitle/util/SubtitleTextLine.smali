.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;
.super Ljava/lang/Object;
.source "SubtitleTextLine.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;


# instance fields
.field texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public addText(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;)V
    .locals 1
    .param p1, "text"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 48
    .local v1, "texts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->texts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;

    invoke-interface {v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const-string v2, "\n"

    invoke-static {v2, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
