.class public Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
.super Ljava/lang/Object;
.source "Vector3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual/range {p0 .. p6}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 15
    return-void
.end method

.method public static add(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 8
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    add-double/2addr v2, v0

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    add-double/2addr v4, v0

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    add-double/2addr v6, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 75
    return-void
.end method

.method public static cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 10
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v4, v6

    sub-double v4, v0, v4

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v8, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    sub-double v6, v0, v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 83
    return-void
.end method

.method public static dot(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)D
    .locals 6
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static largestAbsComponent(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)I
    .locals 10
    .param p0, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    const/4 v6, 0x2

    .line 97
    iget-wide v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 98
    .local v0, "xAbs":D
    iget-wide v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 99
    .local v2, "yAbs":D
    iget-wide v8, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 100
    .local v4, "zAbs":D
    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    .line 101
    cmpl-double v7, v0, v4

    if-lez v7, :cond_0

    .line 102
    const/4 v6, 0x0

    .line 110
    :cond_0
    :goto_0
    return v6

    .line 107
    :cond_1
    cmpl-double v7, v2, v4

    if-lez v7, :cond_0

    .line 108
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static ortho(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 4
    .param p0, "v"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->largestAbsComponent(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 87
    .local v0, "k":I
    if-gez v0, :cond_0

    .line 88
    const/4 v0, 0x2

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setZero()V

    .line 91
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->setComponent(ID)V

    .line 92
    invoke-static {p0, p1, p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->cross(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->normalize()V

    .line 94
    return-void
.end method

.method public static sub(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 8
    .param p0, "a"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    sub-double v2, v0, v2

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    sub-double v4, v0, v4

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v6, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    sub-double v6, v0, v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->set(DDD)V

    .line 79
    return-void
.end method


# virtual methods
.method public length()D
    .locals 6

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->length()D

    move-result-wide v0

    .line 56
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 57
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->scale(D)V

    .line 59
    :cond_0
    return-void
.end method

.method public sameValues(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)Z
    .locals 4
    .param p1, "other"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iget-wide v2, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scale(D)V
    .locals 3
    .param p1, "s"    # D

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 50
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 51
    iget-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 52
    return-void
.end method

.method public set(DDD)V
    .locals 1
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 19
    iput-wide p3, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 20
    iput-wide p5, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 21
    return-void
.end method

.method public set(Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;)V
    .locals 2
    .param p1, "other"    # Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;

    .prologue
    .line 43
    iget-wide v0, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 44
    iget-wide v0, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 45
    iget-wide v0, p1, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 46
    return-void
.end method

.method public setComponent(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "val"    # D

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 28
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    goto :goto_0

    .line 31
    :cond_1
    iput-wide p2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    goto :goto_0
.end method

.method public setZero()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .local v0, "x":D
    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    .line 38
    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    .line 39
    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/sensors/internal/Vector3d;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
