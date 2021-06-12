.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getUser()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$100(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$100(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$000(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;->access$100(Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    :cond_1
    return-void
.end method
