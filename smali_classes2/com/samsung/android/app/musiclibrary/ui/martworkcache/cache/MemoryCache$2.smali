.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;-><init>(ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
