.class Lcom/mz/common/ui/UILoad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/ui/UILoad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/ui/UILoad;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mz/common/ui/UILoad;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/ui/UILoad$1;->a:Lcom/mz/common/ui/UILoad;

    iput-object p2, p0, Lcom/mz/common/ui/UILoad$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mz/common/ui/UILoad$1;->c:Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "http://advimg.ad-mapps.com/sdk/M_PLUS/Image/android/inter/close_exxhigh.png"

    .line 55
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x78

    const/16 v3, 0xa0

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x140

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://advimg.ad-mapps.com/sdk/M_PLUS/Image/android/inter/close_exxhigh.png"

    goto :goto_0

    :cond_1
    const-string v0, "http://advimg.ad-mapps.com/sdk/M_PLUS/Image/android/inter/close_exhigh.png"

    goto :goto_0

    :cond_2
    const-string v0, "http://advimg.ad-mapps.com/sdk/M_PLUS/Image/android/inter/close_high.png"

    .line 70
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 73
    iget-object v2, p0, Lcom/mz/common/ui/UILoad$1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const/4 v2, 0x1

    .line 74
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 75
    iget-object v2, p0, Lcom/mz/common/ui/UILoad$1;->a:Lcom/mz/common/ui/UILoad;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;Landroid/graphics/Bitmap;)V

    .line 76
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$1;->a:Lcom/mz/common/ui/UILoad;

    invoke-static {v1}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$1;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
