.class Lcom/mz/common/ui/UILoad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/ui/UILoad;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/ui/UILoad;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mz/common/ui/UILoad;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/ui/UILoad$2;->a:Lcom/mz/common/ui/UILoad;

    iput-object p2, p0, Lcom/mz/common/ui/UILoad$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mz/common/ui/UILoad$2;->c:Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mz/common/ui/UILoad$2;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "logo.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$2;->a:Lcom/mz/common/ui/UILoad;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$2;->a:Lcom/mz/common/ui/UILoad;

    invoke-static {v1}, Lcom/mz/common/ui/UILoad;->a(Lcom/mz/common/ui/UILoad;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/mz/common/ui/UILoad$2;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
