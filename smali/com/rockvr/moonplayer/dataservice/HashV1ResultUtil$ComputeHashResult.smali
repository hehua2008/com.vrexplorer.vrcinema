.class public Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;
.super Ljava/lang/Object;
.source "HashV1ResultUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComputeHashResult"
.end annotation


# instance fields
.field public mHash:Ljava/lang/String;

.field public mSize:J

.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;


# direct methods
.method public constructor <init>(Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;
    .param p2, "hashValue"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 169
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;->this$0:Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;->mHash:Ljava/lang/String;

    .line 171
    iput-wide p3, p0, Lcom/rockvr/moonplayer/dataservice/HashV1ResultUtil$ComputeHashResult;->mSize:J

    .line 172
    return-void
.end method
