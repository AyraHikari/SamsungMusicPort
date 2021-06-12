.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintUriInfo(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 1
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1$1;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method
