.class public Lcom/rockvr/moonplayer_gvr/util/CodeUtil;
.super Ljava/lang/Object;
.source "CodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codeString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "bin"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcn/xddai/chardet/CharsetDetector;

    invoke-direct {v0}, Lcn/xddai/chardet/CharsetDetector;-><init>()V

    .line 11
    .local v0, "charDect":Lcn/xddai/chardet/CharsetDetector;
    invoke-virtual {v0, p0}, Lcn/xddai/chardet/CharsetDetector;->detectChineseCharset(Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "probableSet":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 13
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 15
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "UTF-8"

    goto :goto_0
.end method
