.class public final Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Landroid/content/Context;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    iput-object p3, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;)V
    .locals 12

    const-string v0, "albumImageUrlsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MilkThumbnailUriResolver"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request completed for albumId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-wide v1, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v3, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;->getImages()Ljava/util/List;

    move-result-object p1

    const-string v0, "albumImageUrlsList.images"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/AlbumImageModel;

    const-string v1, "albumImageUrls"

    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumImageModel;->getUrls()Ljava/util/List;

    move-result-object v0

    const-string v1, "urls"

    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1$$special$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1$$special$$inlined$sortBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/samsung/android/app/music/model/base/ImageModel;

    const-string v7, "it"

    .line 75
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/ImageModel;->getSize()I

    move-result v6

    const/16 v7, 0x60

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_4
    move-object v3, v5

    .line 114
    :goto_2
    check-cast v3, Lcom/samsung/android/app/music/model/base/ImageModel;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_3

    :cond_5
    move-object v9, v5

    .line 115
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/samsung/android/app/music/model/base/ImageModel;

    const-string v7, "it"

    .line 77
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/ImageModel;->getSize()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    goto :goto_5

    :cond_8
    move-object v3, v5

    .line 116
    :goto_5
    check-cast v3, Lcom/samsung/android/app/music/model/base/ImageModel;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_6

    :cond_9
    move-object v10, v5

    .line 117
    :goto_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/music/model/base/ImageModel;

    const-string v6, "it"

    .line 78
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ImageModel;->getSize()I

    move-result v3

    const/16 v6, 0x258

    if-lt v3, v6, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_a

    goto :goto_8

    :cond_c
    move-object v1, v5

    .line 118
    :goto_8
    check-cast v1, Lcom/samsung/android/app/music/model/base/ImageModel;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/ImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    :cond_d
    move-object v11, v5

    .line 80
    iget-object v6, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->b:Landroid/content/Context;

    .line 81
    iget-wide v7, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    .line 79
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;->a(Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;)V

    return-void
.end method
