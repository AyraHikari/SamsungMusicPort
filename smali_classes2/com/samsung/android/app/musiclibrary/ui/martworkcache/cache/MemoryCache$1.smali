.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MemoryProvider"

    return-object v0
.end method
