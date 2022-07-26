.class public Lcom/asha/vrlib/model/MDRay;
.super Ljava/lang/Object;
.source "MDRay.java"


# instance fields
.field private mDir:Lcom/asha/vrlib/model/MDVector3D;

.field private mOrig:Lcom/asha/vrlib/model/MDVector3D;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDVector3D;Lcom/asha/vrlib/model/MDVector3D;)V
    .locals 0
    .param p1, "mOrig"    # Lcom/asha/vrlib/model/MDVector3D;
    .param p2, "mDir"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/asha/vrlib/model/MDRay;->mOrig:Lcom/asha/vrlib/model/MDVector3D;

    .line 13
    iput-object p2, p0, Lcom/asha/vrlib/model/MDRay;->mDir:Lcom/asha/vrlib/model/MDVector3D;

    .line 14
    return-void
.end method


# virtual methods
.method public getDir()Lcom/asha/vrlib/model/MDVector3D;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asha/vrlib/model/MDRay;->mDir:Lcom/asha/vrlib/model/MDVector3D;

    return-object v0
.end method

.method public getOrig()Lcom/asha/vrlib/model/MDVector3D;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asha/vrlib/model/MDRay;->mOrig:Lcom/asha/vrlib/model/MDVector3D;

    return-object v0
.end method

.method public setDir(Lcom/asha/vrlib/model/MDVector3D;)V
    .locals 0
    .param p1, "mDir"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/asha/vrlib/model/MDRay;->mDir:Lcom/asha/vrlib/model/MDVector3D;

    .line 30
    return-void
.end method

.method public setOrig(Lcom/asha/vrlib/model/MDVector3D;)V
    .locals 0
    .param p1, "mOrig"    # Lcom/asha/vrlib/model/MDVector3D;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/asha/vrlib/model/MDRay;->mOrig:Lcom/asha/vrlib/model/MDVector3D;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDRay{, mDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/model/MDRay;->mDir:Lcom/asha/vrlib/model/MDVector3D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/model/MDRay;->mOrig:Lcom/asha/vrlib/model/MDVector3D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
