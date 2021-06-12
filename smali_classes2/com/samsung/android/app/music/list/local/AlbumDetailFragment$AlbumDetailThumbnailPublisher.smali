.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlbumDetailThumbnailPublisher"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/widget/ImageView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "I)V"
        }
    .end annotation

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;->a:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    .line 295
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;I)V
    .locals 0

    .line 308
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;I)V

    .line 309
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;->a:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c()V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 298
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;->a:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c()V

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 303
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailThumbnailPublisher;->a:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$TransitionHelper;->c()V

    return-void
.end method
