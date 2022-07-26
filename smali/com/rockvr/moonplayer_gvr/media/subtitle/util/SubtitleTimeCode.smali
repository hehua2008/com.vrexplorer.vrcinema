.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
.super Ljava/lang/Object;
.source "SubtitleTimeCode.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;",
        ">;"
    }
.end annotation


# instance fields
.field private final MS_HOUR:I

.field private final MS_MINUTE:I

.field private final MS_SECOND:I

.field private hour:I

.field private millisecond:I

.field private minute:I

.field private second:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x36ee80

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_HOUR:I

    .line 17
    const v0, 0xea60

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_MINUTE:I

    .line 18
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_SECOND:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->setHour(I)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->setMinute(I)V

    .line 27
    invoke-virtual {p0, p3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->setSecond(I)V

    .line 28
    invoke-virtual {p0, p4}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->setMillisecond(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const v5, 0xea60

    const v4, 0x36ee80

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_HOUR:I

    .line 17
    iput v5, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_MINUTE:I

    .line 18
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->MS_SECOND:I

    .line 35
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    .line 36
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    mul-int/2addr v0, v4

    int-to-long v0, v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    .line 37
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    mul-int/2addr v0, v4

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    .line 38
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    mul-int/2addr v0, v4

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->millisecond:I

    .line 39
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)I
    .locals 8
    .param p1, "toCompare"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 102
    const/4 v1, -0x1

    .line 103
    .local v1, "BEFORE":I
    const/4 v2, 0x0

    .line 104
    .local v2, "EQUAL":I
    const/4 v0, 0x1

    .line 106
    .local v0, "AFTER":I
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 107
    const/4 v3, 0x0

    .line 111
    :goto_0
    return v3

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 109
    const/4 v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    invoke-virtual {p0, p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->compareTo(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    return v0
.end method

.method public getMillisecond()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->millisecond:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    return v0
.end method

.method public getTime()J
    .locals 3

    .prologue
    .line 98
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getMillisecond()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 51
    if-gez p1, :cond_0

    .line 52
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Hour value must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    .line 56
    return-void
.end method

.method public setMillisecond(I)V
    .locals 2
    .param p1, "millisecond"    # I

    .prologue
    .line 87
    if-ltz p1, :cond_0

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "A Millisecond value must be between 0 and 999"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->millisecond:I

    .line 92
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 63
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Minute value must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    .line 68
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 75
    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "A second value must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    .line 80
    return-void
.end method

.method public subtract(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .locals 6
    .param p1, "toSubtract"    # Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    .prologue
    .line 121
    new-instance v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const-string v0, "%02d:%02d:%02d.%03d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;->millisecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
