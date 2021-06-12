.class final Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;

.field private static final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;

    .line 195
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->b:Landroid/util/LruCache;

    .line 197
    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->c:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->c:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;

    .line 199
    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->c:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache$cacheLock$1;

    .line 205
    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$Cache;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
