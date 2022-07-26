.class public abstract Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;
.super Ljava/lang/Object;
.source "BaseSubtitleObject.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;


# instance fields
.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->cues:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->properties:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public addCue(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V
    .locals 1
    .param p1, "cue"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->cues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public getCues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->cues:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;)Z
    .locals 1
    .param p1, "property"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->cues:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->properties:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/base/BaseSubtitleObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
