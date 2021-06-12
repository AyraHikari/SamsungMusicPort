.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/model/base/ArtistInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 3

    .line 305
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    .line 306
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;Landroid/graphics/Bitmap;)V

    const p2, 0x7f100087

    .line 305
    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V

    .line 316
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
