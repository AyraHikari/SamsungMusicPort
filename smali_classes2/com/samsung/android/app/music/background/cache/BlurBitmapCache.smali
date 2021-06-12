.class public final Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;,
        Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;)Landroid/os/Handler;
    .locals 0

    .line 107
    sget-object p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "FFZ",
            "Landroid/os/Looper;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v4, p0

    move-object v1, p1

    move-object/from16 v8, p6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;->a()Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BlurBitmapCache"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", return default, empty request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "DefaultDrawableCache.get\u2026ltBlurBackground(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const v0, 0x7f100087

    .line 126
    invoke-interface {p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;->a()Landroid/net/Uri;

    move-result-object v2

    .line 127
    new-instance v6, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    move v7, p2

    move/from16 v9, p4

    .line 127
    invoke-direct {v6, v2, v3, p2, v9}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;-><init>(Landroid/net/Uri;FFZ)V

    .line 133
    sget-object v3, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$Cache;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "BlurBitmapCache"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", found in cache"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v8, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 138
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v10

    .line 140
    new-instance v11, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;

    move-object v0, v11

    move-object v1, p1

    move/from16 v2, p4

    move v3, p3

    move-object v4, p0

    move v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;-><init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;ZFLandroid/content/Context;FLcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;Landroid/os/Looper;Lkotlin/jvm/functions/Function2;)V

    check-cast v11, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/high16 p2, 0x41c80000    # 25.0f

    const/high16 v2, 0x41c80000    # 25.0f

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 118
    move-object p5, p2

    check-cast p5, Landroid/os/Looper;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "FFZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
