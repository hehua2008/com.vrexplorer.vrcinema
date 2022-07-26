.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;
.super Ljava/lang/Object;
.source "LowPassFilter.java"


# static fields
.field private static final NANOS_TO_SECONDS:D


# instance fields
.field private final filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private lastTimestampNs:J

.field private numSamples:I

.field private final temp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

.field private final timeConstantSecs:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->NANOS_TO_SECONDS:D

    .line 52
    return-void
.end method

.method public constructor <init>(D)V
    .locals 5
    .param p1, "cutoffFrequency"    # D

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 16
    new-instance v0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->temp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .line 19
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->timeConstantSecs:D

    .line 20
    return-void
.end method


# virtual methods
.method public addSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;J)V
    .locals 6
    .param p1, "sampleData"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "timestampNs"    # J

    .prologue
    .line 27
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->addWeightedSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;JD)V

    .line 28
    return-void
.end method

.method public addWeightedSample(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;JD)V
    .locals 8
    .param p1, "sampleData"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "timestampNs"    # J
    .param p4, "weight"    # D

    .prologue
    .line 31
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->numSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->numSamples:I

    .line 32
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->numSamples:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 33
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 34
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->lastTimestampNs:J

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->lastTimestampNs:J

    sub-long v4, p2, v4

    long-to-double v4, v4

    mul-double/2addr v4, p4

    sget-wide v6, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->NANOS_TO_SECONDS:D

    mul-double v2, v4, v6

    .line 37
    .local v2, "weightedDeltaSecs":D
    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->timeConstantSecs:D

    add-double/2addr v4, v2

    div-double v0, v2, v4

    .line 38
    .local v0, "alpha":D
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 39
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->temp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 40
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->temp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-virtual {v4, v0, v1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 41
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->temp:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    invoke-static {v4, v5, v6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->add(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 42
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->lastTimestampNs:J

    goto :goto_0
.end method

.method public getFilteredData()Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->filteredData:Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    return-object v0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/LowPassFilter;->numSamples:I

    return v0
.end method
