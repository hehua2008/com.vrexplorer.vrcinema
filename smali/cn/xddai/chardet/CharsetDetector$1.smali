.class Lcn/xddai/chardet/CharsetDetector$1;
.super Ljava/lang/Object;
.source "CharsetDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xddai/chardet/CharsetDetector;->detectChineseCharset(Ljava/io/InputStream;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/xddai/chardet/CharsetDetector;


# direct methods
.method constructor <init>(Lcn/xddai/chardet/CharsetDetector;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcn/xddai/chardet/CharsetDetector$1;->this$0:Lcn/xddai/chardet/CharsetDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/xddai/chardet/CharsetDetector$1;->this$0:Lcn/xddai/chardet/CharsetDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/xddai/chardet/CharsetDetector;->access$002(Lcn/xddai/chardet/CharsetDetector;Z)Z

    .line 36
    iget-object v0, p0, Lcn/xddai/chardet/CharsetDetector$1;->this$0:Lcn/xddai/chardet/CharsetDetector;

    invoke-static {v0, p1}, Lcn/xddai/chardet/CharsetDetector;->access$102(Lcn/xddai/chardet/CharsetDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    return-void
.end method
