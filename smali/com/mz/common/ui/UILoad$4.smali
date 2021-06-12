.class Lcom/mz/common/ui/UILoad$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/ui/UILoad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/ui/UILoad;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mz/common/ui/UILoad;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/ui/UILoad$4;->a:Lcom/mz/common/ui/UILoad;

    iput-object p2, p0, Lcom/mz/common/ui/UILoad$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mz/common/ui/UILoad$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mz/common/ui/UILoad$4;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/mz/common/ui/UILoad$4;->e:Landroid/os/Handler;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->d:Landroid/content/Context;

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

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 197
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 198
    iget-object v2, p0, Lcom/mz/common/ui/UILoad$4;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const/4 v2, 0x1

    .line 199
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 200
    iget-object v0, p0, Lcom/mz/common/ui/UILoad$4;->a:Lcom/mz/common/ui/UILoad;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;Landroid/graphics/Bitmap;)V

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->a:Lcom/mz/common/ui/UILoad;

    invoke-static {v1}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$4;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
