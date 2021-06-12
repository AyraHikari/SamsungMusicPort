.class final Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;
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
    name = "LocalImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final makeContentValues(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/LocalCategory;)Landroid/content/ContentValues;
    .locals 9

    .line 1000
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "category_type"

    .line 1001
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "category_id"

    .line 1002
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_category_type"

    .line 1003
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getSubCategoryType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getType()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getSubCategoryType()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v1, v2, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->makeQueryArg(ILjava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p2

    .line 1006
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "arg.uri"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1007
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p2, "favorite_name"

    .line 1008
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "album_id"

    const/4 v4, 0x1

    .line 1009
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "cp_attrs"

    .line 1010
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data1"

    const/4 v3, 0x3

    .line 1011
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data2"

    const/4 v3, 0x4

    .line 1012
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "makeFavoriteContentValue : data is invalid"

    .line 1014
    invoke-static {v0, v4, v3, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v1, p2

    .line 1006
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final makeQueryArg(ILjava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 10

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeQueryArg - categoryType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1026
    invoke-static {v0, v2, v2, v1, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    const-string v0, "\'\' AS data2"

    .line 1030
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const v7, 0x10001

    const/4 v8, 0x2

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1124
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 1125
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FavoriteManager makeQueryArg invalid categoryType : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1124
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 1096
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->b:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1097
    new-array p1, v1, [Ljava/lang/String;

    const-string p3, "composer"

    aput-object p3, p1, v2

    const-string p3, "album_id"

    aput-object p3, p1, v9

    .line 1100
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "number_of_tracks"

    aput-object p3, p1, v5

    aput-object v0, p1, v4

    const-string p3, "dummy"

    aput-object p3, p1, v6

    .line 1097
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "composer=?"

    .line 1105
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1106
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_1

    .line 1083
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->a:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1084
    new-array p1, v1, [Ljava/lang/String;

    const-string p3, "bucket_display_name"

    aput-object p3, p1, v2

    const-string p3, "album_id"

    aput-object p3, p1, v9

    .line 1087
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "number_of_tracks"

    aput-object p3, p1, v5

    const-string p3, "_data"

    aput-object p3, p1, v4

    const-string p3, "dummy"

    aput-object p3, p1, v6

    .line 1084
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "bucket_id=?"

    .line 1092
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1093
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_1

    .line 1070
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->b:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1071
    new-array p1, v1, [Ljava/lang/String;

    const-string p3, "genre"

    aput-object p3, p1, v2

    const-string p3, "album_id"

    aput-object p3, p1, v9

    .line 1074
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "number_of_tracks"

    aput-object p3, p1, v5

    aput-object v0, p1, v4

    const-string p3, "dummy"

    aput-object p3, p1, v6

    .line 1071
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "genre=?"

    .line 1079
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1080
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_1

    .line 1110
    :pswitch_4
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    const/16 v7, 0xb

    .line 1115
    :cond_0
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->a(I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "name"

    const-string p3, "album_id"

    const-string v1, "cp_attrs"

    const-string v2, "number_of_tracks"

    .line 1116
    filled-new-array {p1, p3, v1, v2, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 1122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    if-nez p3, :cond_1

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_2

    .line 1045
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->a:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1046
    new-array p1, v1, [Ljava/lang/String;

    const-string p3, "artist"

    aput-object p3, p1, v2

    const-string p3, "album_id"

    aput-object p3, p1, v9

    .line 1049
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "number_of_tracks"

    aput-object p3, p1, v5

    const-string p3, "number_of_albums"

    aput-object p3, p1, v4

    const-string p3, "dummy"

    aput-object p3, p1, v6

    .line 1046
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "artist=?"

    .line 1054
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1055
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    .line 1057
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1058
    new-array p1, v1, [Ljava/lang/String;

    const-string p3, "artist"

    aput-object p3, p1, v2

    const-string p3, "album_id"

    aput-object p3, p1, v9

    .line 1061
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "number_of_tracks"

    aput-object p3, p1, v5

    const-string p3, "number_of_albums"

    aput-object p3, p1, v4

    const-string p3, "dummy"

    aput-object p3, p1, v6

    .line 1058
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "_id=?"

    .line 1066
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1067
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    .line 1033
    :pswitch_6
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->a:Landroid/net/Uri;

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 1034
    new-array p1, v6, [Ljava/lang/String;

    const-string p3, "album"

    aput-object p3, p1, v2

    const-string p3, "_id"

    aput-object p3, p1, v9

    .line 1037
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v8

    const-string p3, "numsongs"

    aput-object p3, p1, v5

    aput-object v0, p1, v4

    .line 1034
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "_id=?"

    .line 1041
    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 1042
    new-array p1, v9, [Ljava/lang/String;

    aput-object p2, p1, v2

    iput-object p1, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    :goto_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;->makeContentValues(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/LocalCategory;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 943
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b:Landroid/net/Uri;

    const-string v2, "Favorites.PRE_INSERT_CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    aput-object p2, v2, v0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 945
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v1, "Favorites.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "category_type=? AND category_id=?"

    const/4 v2, 0x2

    .line 952
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 949
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 954
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    invoke-direct {p2, p1, v3}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;-><init>(II)V

    return-object p2
.end method

.method public isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z
    .locals 15

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "category"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getId()Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v10

    .line 961
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v3, :cond_8

    const/4 v3, -0x1

    if-ne v10, v3, :cond_0

    goto/16 :goto_4

    .line 966
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_type"

    .line 967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=? AND "

    .line 968
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "category_id"

    .line 969
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x10003

    if-ne v10, v4, :cond_1

    const-string v4, " AND "

    .line 972
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sub_category_type"

    .line 973
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    instance-of v3, v0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    if-nez v3, :cond_2

    move-object v0, v12

    :cond_2
    check-cast v0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->getSubCategoryType()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v12

    :goto_0
    const/4 v14, 0x1

    if-eqz v0, :cond_4

    .line 978
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    aput-object v1, v3, v14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    move-object v6, v3

    goto :goto_1

    .line 979
    :cond_4
    new-array v0, v11, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v13

    aput-object v1, v0, v14

    move-object v6, v0

    .line 981
    :goto_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v0, "Favorites.CONTENT_URI"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category_id"

    .line 982
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 980
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    .line 985
    move-object v3, v12

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-le v0, v14, :cond_6

    .line 990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFavorite type["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/samsung/android/app/music/util/ListUtils;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], id["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\'s count["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v11, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    :cond_6
    move v13, v4

    .line 994
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v13

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 962
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should check why parameters invalid. categoryId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v11, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    return v13
.end method
