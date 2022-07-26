.class public final Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;

    .prologue
    .line 16
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prefix:Ljava/lang/String;

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 28
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->suffix:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static varargs join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "elements"    # [Ljava/lang/CharSequence;

    .prologue
    .line 92
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    .local v1, "joiner":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 97
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;
    .locals 1
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 58
    return-object p0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public merge(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;
    .locals 4
    .param p1, "other"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;

    .prologue
    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, p1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 68
    .local v1, "length":I
    invoke-direct {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 71
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :cond_0
    return-object p0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;
    .locals 1
    .param p1, "emptyValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    const-string v0, "The empty value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 51
    :goto_0
    return-object v1

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->suffix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 48
    .local v0, "initialLength":I
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
