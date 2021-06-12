.class public final Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILandroid/view/View;[Landroid/net/Uri;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ViewType:",
            "Landroid/view/View;",
            ">(ITViewType;[",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "+TViewType;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TViewType;-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPublish"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;-><init>(Landroid/view/View;[Landroid/net/Uri;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 22
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object p4, p2, p3

    .line 23
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {v1, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p4

    .line 25
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p4, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
