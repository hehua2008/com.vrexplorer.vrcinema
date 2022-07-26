.class public abstract Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;
.super Ljava/lang/Object;
.source "BaseSubtitleCue.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;


# instance fields
.field private endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

.field private id:Ljava/lang/String;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V
    .locals 2
    .param p1, "cue"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->id:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;->getStartTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 21
    invoke-interface {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;->getEndTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    .line 23
    return-void
.end method

.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V
    .locals 1
    .param p1, "startTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .param p2, "endTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 32
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;Ljava/util/List;)V
    .locals 0
    .param p1, "startTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .param p2, "endTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 37
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 38
    iput-object p3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public addLine(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;)V
    .locals 1
    .param p1, "line"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getEndTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 85
    .local v1, "texts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const-string v2, "\n"

    invoke-static {v2, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setEndTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V
    .locals 0
    .param p1, "endTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->endTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 63
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->lines:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setStartTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V
    .locals 0
    .param p1, "startTime"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->startTime:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .line 55
    return-void
.end method

.method public subtractTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V
    .locals 1
    .param p1, "toSubtract"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->getStartTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->subtract(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->setStartTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 79
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->getEndTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->subtract(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->setEndTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleCue;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
