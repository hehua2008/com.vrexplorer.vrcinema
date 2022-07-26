.class public final enum Lcom/asha/vrlib/common/MDDirection;
.super Ljava/lang/Enum;
.source "MDDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asha/vrlib/common/MDDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asha/vrlib/common/MDDirection;

.field public static final enum HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

.field public static final enum VERTICAL:Lcom/asha/vrlib/common/MDDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/asha/vrlib/common/MDDirection;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/asha/vrlib/common/MDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    new-instance v0, Lcom/asha/vrlib/common/MDDirection;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/asha/vrlib/common/MDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asha/vrlib/common/MDDirection;->VERTICAL:Lcom/asha/vrlib/common/MDDirection;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asha/vrlib/common/MDDirection;

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->HORIZONTAL:Lcom/asha/vrlib/common/MDDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asha/vrlib/common/MDDirection;->VERTICAL:Lcom/asha/vrlib/common/MDDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asha/vrlib/common/MDDirection;->$VALUES:[Lcom/asha/vrlib/common/MDDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asha/vrlib/common/MDDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/asha/vrlib/common/MDDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/common/MDDirection;

    return-object v0
.end method

.method public static values()[Lcom/asha/vrlib/common/MDDirection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/asha/vrlib/common/MDDirection;->$VALUES:[Lcom/asha/vrlib/common/MDDirection;

    invoke-virtual {v0}, [Lcom/asha/vrlib/common/MDDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asha/vrlib/common/MDDirection;

    return-object v0
.end method
