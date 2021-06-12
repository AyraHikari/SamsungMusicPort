.class final Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MilkImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;
    }
.end annotation


# instance fields
.field private final localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    return-void
.end method

.method private final addToServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/MilkCategory;)Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;
    .locals 19

    move-object/from16 v0, p2

    .line 1190
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isLogin(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const-string v1, "addToServer - not login"

    .line 1191
    invoke-static {v1, v5, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1192
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->getCategoryDataFromServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/MilkCategory;)Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    move-result-object v0

    .line 1193
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;-><init>(ILcom/samsung/android/app/music/list/favorite/MilkCategory;)V

    return-object v1

    .line 1195
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;-><init>(ILcom/samsung/android/app/music/list/favorite/MilkCategory;)V

    .line 1197
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v1

    .line 1199
    :cond_1
    sget-object v6, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1200
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData1()Ljava/lang/String;

    move-result-object v7

    .line 1201
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData2()Ljava/lang/String;

    move-result-object v8

    .line 1202
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v9

    const/16 v10, 0x66

    const/4 v11, 0x2

    if-eq v9, v10, :cond_2

    packed-switch v9, :pswitch_data_0

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToServer - invalid type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v11, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object v1

    :pswitch_0
    const-string v9, "2"

    .line 1204
    new-instance v12, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbum;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v6, v9, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    const-string v9, "3"

    .line 1207
    new-instance v12, Lcom/samsung/android/app/music/list/favorite/FavoriteArtist;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtist;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v6, v9, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v9, "5"

    .line 1212
    new-instance v12, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getImageUrl()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 1210
    invoke-static {v6, v9, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_b

    .line 1221
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "addToServer - server data is max"

    .line 1222
    invoke-static {v1, v5, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1223
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    invoke-direct {v1, v11, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;-><init>(ILcom/samsung/android/app/music/list/favorite/MilkCategory;)V

    return-object v1

    .line 1226
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v1

    if-eq v1, v10, :cond_8

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 1228
    :pswitch_2
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getAlbumList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 1229
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;

    .line 1230
    invoke-static {v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/FavoriteAlbumResult;)Ljava/lang/String;

    move-result-object v7

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToServer album - updateDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getAlbumList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "addToServer - albumList is empty"

    .line 1233
    invoke-static {v1, v5, v11, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1237
    :pswitch_3
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getArtistList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1238
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;

    .line 1239
    invoke-static {v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;)Ljava/lang/String;

    move-result-object v7

    .line 1240
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteArtistResult;->getAlbumCount()Ljava/lang/String;

    move-result-object v8

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToServer artist - updateDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v1, "addToServer - artistList is empty"

    .line 1243
    invoke-static {v1, v5, v11, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_1

    .line 1247
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 1248
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;

    .line 1249
    invoke-static {v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/FavoritePlaylistResult;)Ljava/lang/String;

    move-result-object v7

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToServer playlist - updateDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getPlaylistList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v1, "addToServer - playlist is empty"

    .line 1252
    invoke-static {v1, v5, v11, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    :goto_1
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 1256
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    .line 1258
    new-instance v2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    .line 1259
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v13

    .line 1260
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v14

    .line 1261
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 1262
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    move-object v12, v2

    .line 1258
    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-direct {v1, v5, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;-><init>(ILcom/samsung/android/app/music/list/favorite/MilkCategory;)V

    return-object v1

    :cond_b
    return-object v1

    :cond_c
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final deleteToServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z
    .locals 4

    .line 1334
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->toFavoriteType(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1335
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object p1

    if-eqz p1, :cond_1

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 1340
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteToServer - success:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p1, v1, v1, p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return v3
.end method

.method private final getCategoryDataFromServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/MilkCategory;)Lcom/samsung/android/app/music/list/favorite/MilkCategory;
    .locals 10

    .line 1273
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "getCategoryDataFromServer - not ready"

    const/4 v0, 0x6

    .line 1274
    invoke-static {p1, v2, v2, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object p2

    .line 1277
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->toFavoriteType(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCategoryDataFromServer - invalid type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return-object p2

    .line 1282
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->loadFavoriteCount(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1285
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData1()Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData2()Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :pswitch_2
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1292
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;->getAlbumCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    const-string v3, "2"

    .line 1287
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1289
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->trackCount(Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v8, v1

    move-object v9, v2

    .line 1296
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    .line 1297
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v4

    .line 1298
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1299
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1300
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    .line 1296
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final makeContentValues(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;)Landroid/content/ContentValues;
    .locals 8

    .line 1162
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;->getCategory()Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    move-result-object v0

    const/4 v1, 0x0

    .line 1163
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    .line 1164
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1166
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->b:Landroid/net/Uri;

    const-string v5, "Favorites.AlbumArt.CONTENT_URI_INCLUDE_UPDATE"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "thumbnail_id"

    .line 1168
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "thumbnail_type"

    .line 1169
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "image_url"

    .line 1170
    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-static {p1, v2, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->g(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string p1, "makeContentValues - imageUrl is null"

    const/4 v3, 0x6

    .line 1172
    invoke-static {p1, v4, v4, v3, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1173
    :goto_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "category_id"

    .line 1174
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "category_type"

    .line 1175
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_2

    .line 1176
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string v3, "album_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v1, "favorite_name"

    .line 1177
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cp_attrs"

    const v2, 0x80002

    .line 1178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1179
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "data1"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->getData2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "data2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;->getState()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :goto_1
    const-string p2, "modified_state"

    .line 1183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method


# virtual methods
.method public addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "category"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    instance-of v3, v2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    if-eqz v3, :cond_2

    .line 1138
    sget-object v3, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteCategoryCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lt v3, v4, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInternal - local count max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9, v9, v6, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1143
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    invoke-direct {v1, v9, v9, v8, v7}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v1

    .line 1145
    :cond_0
    check-cast v2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->addToServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/MilkCategory;)Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    move-result-object v2

    .line 1146
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v1, "addInternal - server count max"

    .line 1148
    invoke-static {v1, v9, v9, v6, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1149
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    invoke-direct {v1, v9, v9, v8, v7}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v1

    .line 1151
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->makeContentValues(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1153
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b:Landroid/net/Uri;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Favorites.addUpdateUri(F\u2026s.PRE_INSERT_CONTENT_URI)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v8, [Landroid/content/ContentValues;

    aput-object v2, v4, v9

    .line 1152
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v11

    .line 1155
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 1157
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    check-cast v2, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    check-cast v2, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    instance-of v0, p2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    if-eqz v0, :cond_1

    .line 1308
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->deleteToServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 1311
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v4, "Favorites.CONTENT_URI"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "category_type=? AND category_id=?"

    .line 1313
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    .line 1310
    invoke-static {p1, v0, v4, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 1316
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "modified_state"

    .line 1317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v5, "Favorites.CONTENT_URI"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "category_type=? AND category_id=?"

    .line 1323
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    .line 1319
    invoke-static {p1, v4, v0, v5, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1326
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;-><init>(II)V

    goto :goto_1

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    instance-of v0, p2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    if-eqz v0, :cond_6

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFavoriteInternal - id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1347
    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1348
    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v1

    .line 1349
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_5

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    goto/16 :goto_2

    .line 1354
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->toFavoriteType(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1356
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    sget-object v1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result v0

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1362
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->getCategoryDataFromServer(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/MilkCategory;)Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    move-result-object p2

    .line 1365
    new-instance v2, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;-><init>(ILcom/samsung/android/app/music/list/favorite/MilkCategory;)V

    .line 1363
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->makeContentValues(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl$ServerResult;)Landroid/content/ContentValues;

    move-result-object p2

    .line 1368
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b:Landroid/net/Uri;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "Favorites.addUpdateUri(F\u2026s.PRE_INSERT_CONTENT_URI)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    new-array v1, v1, [Landroid/content/ContentValues;

    aput-object p2, v1, v3

    .line 1367
    invoke-static {p1, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_1

    .line 1373
    :cond_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v4, "Favorites.CONTENT_URI"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "category_type=? AND category_id=?"

    .line 1375
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    .line 1372
    invoke-static {p1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_4
    return v3

    .line 1350
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "You should check why parameters invalid. categoryId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", categoryType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v5, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return v3

    .line 1380
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result p1

    return p1
.end method
