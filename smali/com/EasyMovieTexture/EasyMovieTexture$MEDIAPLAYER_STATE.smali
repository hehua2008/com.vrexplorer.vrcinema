.class public final enum Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;
.super Ljava/lang/Enum;
.source "EasyMovieTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/EasyMovieTexture/EasyMovieTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIAPLAYER_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum END:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum ERROR:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

.field public static final enum STOPPED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;


# instance fields
.field private iValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 605
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v4, v4}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 606
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5, v5}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 607
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "END"

    invoke-direct {v0, v1, v6, v6}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->END:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 608
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7, v7}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 609
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v8, v8}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 610
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->STOPPED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 611
    new-instance v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->ERROR:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    .line 604
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->NOT_READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->READY:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->END:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PLAYING:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->PAUSED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->STOPPED:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->ERROR:Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->$VALUES:[Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 615
    iput p3, p0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->iValue:I

    .line 616
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 604
    const-class v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    return-object v0
.end method

.method public static values()[Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->$VALUES:[Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    invoke-virtual {v0}, [Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;

    return-object v0
.end method


# virtual methods
.method public GetValue()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/EasyMovieTexture/EasyMovieTexture$MEDIAPLAYER_STATE;->iValue:I

    return v0
.end method
