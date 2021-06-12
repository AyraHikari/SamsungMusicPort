.class public final Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;,
        Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;)Landroid/os/Handler;
    .locals 0

    .line 118
    sget-object p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;IFFLkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
            "IFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDiscoverBlurBitmap client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", destBitmapSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blurRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", scaleK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    new-instance v9, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;->a()Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    move-result-object v0

    .line 134
    invoke-direct {v9, v0, p2, p3}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;IF)V

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDiscoverBlurBitmap client="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", found in cache"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    invoke-interface {p5, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 144
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/background/cache/NUriLoader;

    new-instance v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p5

    move v5, p2

    move v6, p4

    move-object v7, p0

    move v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lkotlin/jvm/functions/Function2;IFLandroid/content/Context;FLcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/background/cache/NUriLoader;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lkotlin/jvm/functions/Function2;)V

    .line 191
    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/cache/NUriLoader;->a()V

    return-void
.end method
