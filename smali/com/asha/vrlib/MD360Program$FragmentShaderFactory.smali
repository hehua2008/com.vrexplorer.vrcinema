.class Lcom/asha/vrlib/MD360Program$FragmentShaderFactory;
.super Ljava/lang/Object;
.source "MD360Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MD360Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentShaderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fs(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 111
    sget v0, Lcom/asha/vrlib/R$raw;->per_pixel_fragment_shader:I

    .line 114
    .local v0, "resId":I
    :goto_0
    invoke-static {p0, v0}, Lcom/asha/vrlib/common/GLUtil;->readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "resId":I
    :pswitch_0
    sget v0, Lcom/asha/vrlib/R$raw;->per_pixel_fragment_shader_bitmap:I

    .line 105
    .restart local v0    # "resId":I
    goto :goto_0

    .line 107
    .end local v0    # "resId":I
    :pswitch_1
    sget v0, Lcom/asha/vrlib/R$raw;->per_pixel_fragment_shader_bitmap_fbo:I

    .line 108
    .restart local v0    # "resId":I
    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
