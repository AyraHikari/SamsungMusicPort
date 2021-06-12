.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

.field final synthetic val$albumId:J

.field final synthetic val$baseUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$searchKey:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/util/Pair;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;J)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$searchKey:Landroid/util/Pair;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$looper:Landroid/os/Looper;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$baseUri:Landroid/net/Uri;

    iput-wide p7, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 7

    if-nez p2, :cond_2

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .line 183
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$context:Landroid/content/Context;

    .line 184
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 182
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$302(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$searchKey:Landroid/util/Pair;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    move-object v5, p1

    goto :goto_1

    .line 190
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$searchKey:Landroid/util/Pair;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$500()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$searchKey:Landroid/util/Pair;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$looper:Landroid/os/Looper;

    if-nez p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$600(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 200
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$baseUri:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$albumId:J

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 203
    :cond_3
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$looper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;

    invoke-direct {p2, p0, v5}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
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
