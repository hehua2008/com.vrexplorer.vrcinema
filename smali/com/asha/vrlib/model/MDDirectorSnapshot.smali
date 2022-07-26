.class public Lcom/asha/vrlib/model/MDDirectorSnapshot;
.super Ljava/lang/Object;
.source "MDDirectorSnapshot.java"


# instance fields
.field private projectionMatrix:[F

.field private viewMatrix:[F

.field private viewportHeight:F

.field private viewportWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewMatrix:[F

    .line 13
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->projectionMatrix:[F

    return-void
.end method


# virtual methods
.method public copy(Lcom/asha/vrlib/MD360Director;)V
    .locals 4
    .param p1, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Director;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewportWidth:F

    .line 35
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Director;->getViewportHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewportHeight:F

    .line 37
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Director;->getViewMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewMatrix:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-virtual {p1}, Lcom/asha/vrlib/MD360Director;->getProjectionMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->projectionMatrix:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-void
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->projectionMatrix:[F

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewMatrix:[F

    return-object v0
.end method

.method public getViewportHeight()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewportHeight:F

    return v0
.end method

.method public getViewportWidth()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/asha/vrlib/model/MDDirectorSnapshot;->viewportWidth:F

    return v0
.end method
