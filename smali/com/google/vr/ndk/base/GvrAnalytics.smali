.class public Lcom/google/vr/ndk/base/GvrAnalytics;
.super Ljava/lang/Object;
.source "GvrAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GvrAnalytics"


# instance fields
.field private final nativeAnalytics:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/google/vr/ndk/base/GvrAnalytics;->nativeAnalytics:J

    .line 42
    return-void
.end method


# virtual methods
.method public querySample()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-wide v2, p0, Lcom/google/vr/ndk/base/GvrAnalytics;->nativeAnalytics:J

    invoke-static {v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeAnalyticsGetSample(J)[B

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    const-string v2, "GvrAnalytics"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "error parsing AnalyticsSample: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
