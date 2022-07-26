.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;
.super Ljava/lang/Object;
.source "SubtitleStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontWeight;,
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;,
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;,
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextDecoration;,
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;,
        Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;
    }
.end annotation


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;)V
    .locals 4
    .param p1, "subtitleStyle"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    .line 71
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public buildSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "none"

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->COLOR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->DIRECTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    return-object v0
.end method

.method public getFontStyle()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_STYLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_ALIGN:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    return-object v0
.end method

.method public getTextDecoration()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextDecoration;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_DECORATION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextDecoration;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->COLOR:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setDirection(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;)V
    .locals 1
    .param p1, "direction"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Direction;

    .prologue
    .line 81
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->DIRECTION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setFontStyle(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;)V
    .locals 1
    .param p1, "fontStyle"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$FontStyle;

    .prologue
    .line 106
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->FONT_STYLE:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public setProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    .line 123
    return-void
.end method

.method public setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setTextAlign(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;)V
    .locals 1
    .param p1, "textAlign"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextAlign;

    .prologue
    .line 90
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_ALIGN:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public setTextDecoration(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextDecoration;)V
    .locals 1
    .param p1, "textDecoration"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$TextDecoration;

    .prologue
    .line 114
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;->TEXT_DECORATION:Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;

    invoke-virtual {p0, v0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle;->setProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleStyle$Property;Ljava/lang/Object;)V

    .line 115
    return-void
.end method
