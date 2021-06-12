.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESULT_CODE_ERR_MAX_LIMIT_FAVORITE:I = 0x2261

.field private static final TAG:Ljava/lang/String; = "FavoriteApi"

.field private static final TRACK_MORE_COUNT:Ljava/lang/String; = "101"


# direct methods
.method public static final addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteApi;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFavorites - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistRequest;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistRequest;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "2"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumRequest;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "1"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackRequest;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    :goto_0
    invoke-interface {p0, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->addFavorites(Ljava/lang/Object;)Lretrofit2/Call;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "addFavorites - result is null"

    .line 78
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 81
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->d()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "addFavorites - not successful"

    .line 82
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 85
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    if-nez p0, :cond_2

    const-string p0, "addFavorites - response is null"

    .line 87
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result p1

    const/16 p2, 0x2261

    if-eq p1, p2, :cond_3

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addFavorites failed server side. : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v3

    :cond_3
    return-object p0

    .line 72
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addFavorites - invalid type : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final artistIds(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 504
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/Artist;

    .line 367
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/favorite/Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, "::"

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final artistNames(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 506
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/Artist;

    .line 375
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/favorite/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteTrack;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteApi;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFavorites - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 99
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const-string p0, "deleteFavorites - idList is empty"

    .line 100
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    check-cast p2, Ljava/lang/Iterable;

    .line 502
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v6, "5"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    new-instance v6, Lcom/samsung/android/app/music/list/favorite/DeleteFavoritePlaylist;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoritePlaylist;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v6, "3"

    .line 106
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    new-instance v6, Lcom/samsung/android/app/music/list/favorite/FavoriteArtist;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtist;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const-string v6, "2"

    .line 106
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    new-instance v6, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const-string v6, "1"

    .line 106
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    new-instance v6, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "deleteFavorites - dataList is empty"

    .line 114
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 117
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    packed-switch p2, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_2

    :pswitch_6
    const-string p2, "5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 121
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_7
    const-string p2, "3"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 120
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_8
    const-string p2, "2"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 119
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_9
    const-string p2, "1"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 118
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackRequest;

    check-cast v0, Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 127
    :goto_1
    invoke-interface {p0, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->deleteFavorites(Ljava/lang/Object;)Lretrofit2/Call;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "deleteFavorites - result is null"

    .line 129
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 132
    :cond_4
    invoke-virtual {p0}, Lretrofit2/Response;->d()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "deleteFavorites - not successful"

    .line 133
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 136
    :cond_5
    invoke-virtual {p0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    if-nez p0, :cond_6

    const-string p0, "deleteFavorites - response is null"

    .line 138
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteFavorites failed server side. : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->getResultCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v3

    :cond_7
    return-object p0

    .line 123
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteFavorites - invalid type : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFavorite - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 177
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->checkFavorite(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    const/4 p1, 0x2

    if-nez p0, :cond_0

    const-string p0, "isFavorite - result is null"

    .line 179
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 182
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->d()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "isFavorite - not successful"

    .line 183
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 186
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;

    if-nez p0, :cond_2

    const-string p0, "isFavorite - response is null"

    .line 188
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isFavorite failed server side. : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;->getResultCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v3

    .line 195
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->isFavorite(Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final isFavorite(Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;)Z
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;->getFavoriteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final loadFavoriteCount(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFavoriteCount - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 200
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->getFavoriteCount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    const/4 p1, 0x2

    if-nez p0, :cond_0

    const-string p0, "loadFavoriteCount - result is null"

    .line 202
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 205
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->d()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "loadFavoriteCount - not successful"

    .line 206
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 209
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    if-nez p0, :cond_2

    const-string p0, "loadFavoriteCount - response is null"

    .line 211
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_3

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFavoriteCount failed server side. : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->getResultCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v3

    :cond_3
    return-object p0
.end method

.method public static final loadFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFavorites - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 154
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->getFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    const/4 p1, 0x2

    if-nez p0, :cond_0

    const-string p0, "loadFavorites - result is null"

    .line 156
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 159
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->d()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "loadFavorites - not successful"

    .line 160
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 163
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    if-nez p0, :cond_2

    const-string p0, "loadFavorites - response is null"

    .line 165
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v3

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFavorites failed server side. : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getResultCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v3

    :cond_3
    return-object p0
.end method

.method public static synthetic loadFavorites$default(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "1"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 151
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->loadFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final logD(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteApi"

    .line 483
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logD$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 482
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logD(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final logE(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "FavoriteApi"

    .line 493
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logE$default(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 492
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE(Ljava/lang/String;I)V

    return-void
.end method

.method private static final logI(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteApi"

    .line 487
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logI$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 486
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logI(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final logW(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteApi"

    .line 490
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logW$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 489
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logW(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final prependIndent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "                "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 498
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "            "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 497
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 496
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final resultCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :pswitch_2
    const-string v2, "3"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getArtistList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :pswitch_3
    const-string v2, "2"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getAlbumList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :pswitch_4
    const-string v2, "1"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getTrackList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    move v1, p0

    :cond_1
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final totalCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;->getCount()I

    move-result p0

    return p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;->getTrackCount()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;->getTrackCount()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;->getTrackCount()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/FavoriteResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteResult;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteResult;->getTrackCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->getTrackCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteAlbum;->getTrackCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoriteArtist;->getTrackCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trackCount(Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getTrackMoreYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/ServerFavoritePlaylist;->getTrackCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final trackCount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Y"

    .line 479
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "101"

    :cond_0
    return-object p1
.end method
