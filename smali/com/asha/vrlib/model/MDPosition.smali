.class public abstract Lcom/asha/vrlib/model/MDPosition;
.super Ljava/lang/Object;
.source "MDPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/model/MDPosition$MDOriginalPosition;
    }
.end annotation


# static fields
.field private static final sOriginalPosition:Lcom/asha/vrlib/model/MDPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/asha/vrlib/model/MDPosition$MDOriginalPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asha/vrlib/model/MDPosition$MDOriginalPosition;-><init>(Lcom/asha/vrlib/model/MDPosition$1;)V

    sput-object v0, Lcom/asha/vrlib/model/MDPosition;->sOriginalPosition:Lcom/asha/vrlib/model/MDPosition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asha/vrlib/model/MDPosition;->sOriginalPosition:Lcom/asha/vrlib/model/MDPosition;

    return-object v0
.end method

.method public static newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/asha/vrlib/model/position/MDMutablePosition;->newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getMatrix()[F
.end method

.method public abstract setRotationMatrix([F)V
.end method
