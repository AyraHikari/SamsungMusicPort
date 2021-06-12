.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getFavoriteCategoryCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 141
    check-cast p2, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteCategoryCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic getFavoriteTrackCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 132
    check-cast p2, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getFavoriteCategoryCount(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteCategoryCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getFavoriteCategoryCount(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 142
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 143
    :goto_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string p2, "Favorites.CONTENT_URI"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->queryCount$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)I

    move-result p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFavoriteCategoryCount() - count: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return p1
.end method

.method public final getFavoriteTrackCount(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getFavoriteTrackCount(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 133
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp_attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 134
    :goto_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string p2, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->queryCount$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)I

    move-result p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFavoriteTrackCount() count: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return p1
.end method

.method public final getInsertUriByOption(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_add_tracks_to_top_of_playlist"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->b:Landroid/net/Uri;

    const-string p2, "Favorites.Tracks.PRE_INSERT_CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string p2, "Favorites.Tracks.CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final toFavoriteType(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x66

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFavoriteType - invalid type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    goto :goto_0

    :pswitch_2
    const-string v1, "3"

    goto :goto_0

    :cond_0
    const-string v1, "5"

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
