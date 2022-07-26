.class public Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;
.super Ljava/lang/Object;
.source "StackTraceHelper.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/StackFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/StackTraceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackFrameImpl"
.end annotation


# instance fields
.field private final mColumn:I

.field private final mFile:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mLine:I

.field private final mMethod:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    .line 53
    iput p4, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    .line 54
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    .line 55
    return-void

    .line 54
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/facebook/react/devsupport/StackTraceHelper$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "line"    # I
    .param p5, "column"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    .line 61
    iput p4, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    .line 62
    iput p5, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/facebook/react/devsupport/StackTraceHelper$1;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 110
    new-instance v8, Lorg/json/JSONObject;

    const-string v0, "file"

    .line 112
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodName"

    .line 113
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lineNumber"

    .line 114
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getLine()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "column"

    .line 115
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getColumn()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 111
    invoke-static/range {v0 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v8
.end method
