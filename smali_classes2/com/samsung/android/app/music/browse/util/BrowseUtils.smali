.class public Lcom/samsung/android/app/music/browse/util/BrowseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BrowseUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 14

    .line 215
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getCards()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/model/browse/main/CardModel;

    .line 225
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getCardType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 226
    sget-object v8, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getJustForYouData Personal cardType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getBanner()Lcom/samsung/android/app/music/model/base/BannerModel;

    move-result-object v6

    .line 278
    new-instance v7, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v7}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    const/16 v8, -0x7d1

    .line 279
    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v7

    .line 280
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/BannerModel;->getBannerTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    .line 281
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v5

    .line 282
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/BannerModel;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/BannerModel;->getLinkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->j(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v5

    .line 283
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/BannerModel;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->i(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v5

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_0

    .line 248
    :pswitch_1
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/browse/main/CardModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v6

    .line 249
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getThumbnailList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 252
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/model/base/ThumbnailModel;

    .line 253
    new-instance v10, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v10}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 255
    invoke-virtual {v9}, Lcom/samsung/android/app/music/model/base/ThumbnailModel;->getImageList()Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x60

    const/16 v13, 0xc8

    invoke-static {v11, v13, v12}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v11

    .line 254
    invoke-virtual {v10, v11}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v10

    .line 258
    invoke-virtual {v9}, Lcom/samsung/android/app/music/model/base/ThumbnailModel;->getImageList()Ljava/util/List;

    move-result-object v9

    const/16 v11, 0x258

    invoke-static {v9, v11, v13}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-virtual {v10, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v9

    .line 261
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_2
    new-instance v8, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v8}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 266
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v8

    const/16 v9, -0x7d2

    .line 267
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v8

    .line 268
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v8

    .line 269
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v8

    .line 270
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->g(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v8

    .line 271
    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->h(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v6

    .line 272
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a(Ljava/util/List;)V

    .line 273
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 231
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v6

    const-string v7, "key_browse_welcome_remaining_show_count"

    const/16 v8, 0xf

    .line 233
    invoke-static {p0, v7, v8}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 235
    sget-object v8, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getJustForYouData showCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "complete_set_favorite_music"

    .line 236
    invoke-virtual {v6, v8, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    if-lez v7, :cond_1

    .line 238
    new-instance v4, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    const/16 v6, -0x7d0

    .line 239
    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v4

    .line 240
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_browse_welcome_remaining_show_count"

    add-int/lit8 v7, v7, -0x1

    .line 241
    invoke-static {p0, v4, v7}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_4

    .line 289
    invoke-static {v1, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 291
    :cond_4
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 325
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3eb

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;->getAlbums()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/AlbumModel;

    .line 332
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 333
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 334
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getImgList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 336
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getImgList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 337
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 338
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 339
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 427
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ef

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->getGenres()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 433
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    .line 434
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 435
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 438
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 439
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 440
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 296
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->getPlaylists()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 304
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 305
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    const/16 v4, -0xbb8

    .line 306
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v3

    .line 308
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a(Ljava/util/List;)V

    goto :goto_1

    .line 310
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    const/16 v4, -0xbb9

    .line 311
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 312
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 313
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 315
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x258

    invoke-static {v2, v4, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v3

    .line 318
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 346
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->getVideos()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 353
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/VideoModel;

    .line 354
    new-instance v4, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 355
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    const/16 v5, -0xfa1

    .line 356
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    .line 357
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->getVideoTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    .line 358
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->getVideoTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->getExplicit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->j(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v3

    .line 360
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;->getPlaylists()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    .line 365
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0

    .line 369
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 370
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 371
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    const/16 v4, -0xfa0

    .line 372
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 373
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 376
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 377
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 378
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 4

    .line 201
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3e8

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v2, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->i(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->getLinkType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->j(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object p0

    .line 208
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 447
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3f0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;->getYears()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 453
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    .line 454
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 455
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 456
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 458
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 459
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 460
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 475
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 72
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseData;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->getGlobalCurationModel()Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTip()Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object v2

    const-string v3, "key_browse_show_tip"

    const/4 v4, 0x1

    .line 97
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->getPersonalCurationModel()Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTopchart()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 133
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 142
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->b(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 144
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->c(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 160
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;->getGenres()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 169
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 171
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 173
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_9
    new-instance p0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 p1, -0x3f1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 179
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static b(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 385
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->getPlaylists()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 392
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 393
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 394
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 397
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 187
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 188
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    .line 189
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 190
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 191
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 192
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0xc8

    const/16 v6, 0x60

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 193
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getRankingChg()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(I)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 195
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;
    .locals 7

    .line 406
    new-instance v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v1, -0x3ee

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;-><init>(I)V

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;->getPlaylists()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 412
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/PlayListModel;

    .line 413
    new-instance v3, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;-><init>()V

    .line 414
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 415
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x60

    const/16 v6, 0xc8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 417
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v3

    .line 418
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a()Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    move-result-object v2

    .line 420
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a(Ljava/util/List;)V

    return-object v0
.end method
