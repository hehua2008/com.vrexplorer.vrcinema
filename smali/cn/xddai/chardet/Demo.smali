.class public Lcn/xddai/chardet/Demo;
.super Ljava/lang/Object;
.source "Demo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Lcn/xddai/chardet/CharsetDetector;

    invoke-direct {v1}, Lcn/xddai/chardet/CharsetDetector;-><init>()V

    .line 16
    .local v1, "charDect":Lcn/xddai/chardet/CharsetDetector;
    new-instance v6, Ljava/net/URL;

    const-string v7, "http://www.qq.com/"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcn/xddai/chardet/CharsetDetector;->detectChineseCharset(Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object v5

    .line 18
    .local v5, "probableSet":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 20
    .local v2, "charset":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    .end local v2    # "charset":Ljava/lang/String;
    :cond_0
    return-void
.end method
