.class final Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->invoke(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

.field final synthetic b:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->b:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 218
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDiscoverBlurBitmap client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", failed to load 1 or more image result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->b:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
