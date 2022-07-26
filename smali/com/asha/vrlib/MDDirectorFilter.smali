.class public Lcom/asha/vrlib/MDDirectorFilter;
.super Ljava/lang/Object;
.source "MDDirectorFilter.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;


# instance fields
.field private delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterPitch(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 16
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    invoke-interface {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;->onFilterPitch(F)F

    move-result p1

    .line 20
    .end local p1    # "input":F
    :cond_0
    return p1
.end method

.method public onFilterRoll(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    invoke-interface {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;->onFilterRoll(F)F

    move-result p1

    .line 38
    .end local p1    # "input":F
    :cond_0
    return p1
.end method

.method public onFilterYaw(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    invoke-interface {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;->onFilterYaw(F)F

    move-result p1

    .line 29
    .end local p1    # "input":F
    :cond_0
    return p1
.end method

.method public setDelegate(Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;)V
    .locals 0
    .param p1, "delegate"    # Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/asha/vrlib/MDDirectorFilter;->delegate:Lcom/asha/vrlib/MDVRLibrary$IDirectorFilter;

    .line 43
    return-void
.end method
