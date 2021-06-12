.class final Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->invoke(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;->this$0:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;->this$0:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$searchKey:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;Landroid/graphics/Bitmap;)V

    .line 218
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDiscoverBlurBitmap client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;->this$0:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", processing completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5$3;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;Landroid/graphics/Bitmap;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
