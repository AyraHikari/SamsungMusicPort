.class Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;Landroid/graphics/Bitmap;)Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->a:Landroid/graphics/Bitmap;

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

    .line 527
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2$1;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$2;->b:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->c(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a()V

    return-void
.end method
