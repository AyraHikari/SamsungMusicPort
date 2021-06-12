.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

.field final synthetic val$baseUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$baseUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    if-nez p2, :cond_1

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .line 262
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$context:Landroid/content/Context;

    .line 263
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 261
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$302(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 266
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$800()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$baseUri:Landroid/net/Uri;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$800()Ljava/util/Map;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$baseUri:Landroid/net/Uri;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-nez p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$800()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$baseUri:Landroid/net/Uri;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$900(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 278
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;->val$baseUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
