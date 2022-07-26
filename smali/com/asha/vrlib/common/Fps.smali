.class public Lcom/asha/vrlib/common/Fps;
.super Ljava/lang/Object;
.source "Fps.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "fps"


# instance fields
.field private mFrameCount:I

.field private mLastTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public step()V
    .locals 8

    .prologue
    .line 14
    iget v3, p0, Lcom/asha/vrlib/common/Fps;->mFrameCount:I

    rem-int/lit8 v3, v3, 0x78

    if-nez v3, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    .local v0, "current":J
    iget-wide v4, p0, Lcom/asha/vrlib/common/Fps;->mLastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 17
    iget v3, p0, Lcom/asha/vrlib/common/Fps;->mFrameCount:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    iget-wide v4, p0, Lcom/asha/vrlib/common/Fps;->mLastTimestamp:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 18
    .local v2, "fps":F
    const-string v3, "fps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .end local v2    # "fps":F
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/asha/vrlib/common/Fps;->mFrameCount:I

    .line 21
    iput-wide v0, p0, Lcom/asha/vrlib/common/Fps;->mLastTimestamp:J

    .line 23
    .end local v0    # "current":J
    :cond_1
    iget v3, p0, Lcom/asha/vrlib/common/Fps;->mFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/asha/vrlib/common/Fps;->mFrameCount:I

    .line 24
    return-void
.end method
