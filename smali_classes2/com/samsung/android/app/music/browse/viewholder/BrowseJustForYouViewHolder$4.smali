.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;Ljava/util/List;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 7

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->c(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    .line 419
    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Landroid/graphics/Bitmap;)V

    .line 420
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    .line 421
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->a:Ljava/util/List;

    const/4 v3, 0x0

    .line 422
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const v4, 0x7f100087

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    .line 424
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->d(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    move-result-object v6

    move-object v5, p2

    .line 421
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 410
    check-cast p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$4;->a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
