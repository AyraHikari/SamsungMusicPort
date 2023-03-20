.class public Lcom/samsung/android/app/music/provider/MusicSearchProvider;
.super Landroid/content/ContentProvider;
.source "MusicSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicSearchProvider$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/content/UriMatcher;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "content://com.sec.android.app.music.MusicSearchProvider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string v2, "search_suggest_query"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "search_suggest_query/*"

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sget-object v2, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    const/4 v4, 0x3

    .line 6
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "audio/albumart/#"

    const/4 v5, 0x4

    .line 7
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "_id"

    const-string v7, "suggest_icon_1"

    const-string v8, "suggest_text_1"

    const-string v9, "suggest_text_2"

    const-string v10, "suggest_intent_data"

    const-string v11, "suggest_intent_extra_data"

    .line 8
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->c:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    .line 9
    sget-object v1, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    const-string v0, "title"

    const-string v1, "album"

    const-string v2, "artist"

    .line 10
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lcom/samsung/android/app/music/provider/MusicSearchProvider$a;

    invoke-direct {v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$a;-><init>()V

    .line 5
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v2, p1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegExSeg length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMUSIC-Provider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 8
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    .line 9
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/e$l;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->i(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 17
    :cond_2
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_4
    throw p2
.end method

.method public final b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE ?"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, " ) OR ( "

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " )"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/e$o;->a:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v3, "album_id"

    const-string v6, "title"

    const-string v7, "artist"

    const-string v8, "album"

    filled-new-array {v1, v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is_music"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v8, v2

    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v0

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/provider/e$o;->f:Ljava/lang/String;

    move-object v3, p0

    .line 9
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->i(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->c(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "_id"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "album_id"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    .line 3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "artist"

    .line 4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album"

    .line 5
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v0, :cond_2

    if-ltz v4, :cond_2

    if-ltz v2, :cond_2

    if-gez v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->c:[Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 9
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v8, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "global_search"

    .line 15
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->moveToFirst()Z

    return-object v5

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "getInAppSearchIntent"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.SEARCH"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.sec.android.app.music"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x24

    const-string p3, "key_list_type"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "inAppSearchIntent"

    .line 7
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p2

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://com.sec.android.app.music/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "music_player_default_cover_for_sfinder"

    const-string v9, "drawable"

    const-string v10, "com.sec.android.app.music"

    .line 4
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f13005a

    .line 7
    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f130047

    .line 8
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f130431

    .line 9
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 11
    new-instance v11, Landroid/database/MatrixCursor;

    invoke-direct {v11, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 12
    new-instance v12, Landroid/database/MatrixCursor;

    invoke-direct {v12, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v1, :cond_c

    if-nez p3, :cond_1

    .line 13
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    goto :goto_0

    :cond_1
    move/from16 v15, p3

    .line 14
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    const-string v13, "_id"

    .line 15
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v10, "mime_type"

    .line 16
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v16, v4

    const-string v4, "artist"

    move-object/from16 v17, v12

    .line 17
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v18, v8

    const-string v8, "album_id"

    .line 18
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v19, v11

    const-string v11, "album"

    move-object/from16 v20, v7

    .line 19
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move/from16 p3, v7

    const-string v7, "title"

    .line 20
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move/from16 v21, v7

    const-string v7, "data1"

    .line 21
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v22, v11

    const-string v11, "data2"

    .line 22
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 23
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v14, :cond_b

    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move/from16 v24, v14

    .line 25
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 27
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v14

    if-lt v14, v15, :cond_2

    move-object/from16 v25, v4

    move/from16 v26, v11

    move v11, v12

    move-object/from16 v4, v16

    move-object/from16 v12, v17

    move-object/from16 v28, v20

    move-object/from16 v27, v22

    move/from16 v20, v7

    move/from16 v22, v10

    move v7, v13

    :goto_2
    move-object/from16 v10, v19

    move/from16 v19, p3

    goto/16 :goto_6

    .line 28
    :cond_2
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v4

    .line 29
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->g(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move/from16 v27, v12

    move/from16 v26, v13

    .line 32
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 33
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v23

    .line 36
    invoke-virtual {v0, v4, v1, v7, v11}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->h(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x2

    .line 38
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v20

    .line 40
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v9, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_3
    move/from16 v27, v12

    move/from16 v26, v13

    move-object/from16 v12, v20

    move-object/from16 v4, v23

    :goto_3
    move-object/from16 v23, v4

    move/from16 v20, v7

    move-object/from16 v28, v12

    move-object/from16 v4, v16

    move-object/from16 v12, v17

    move/from16 v7, v26

    move/from16 v26, v11

    move/from16 v11, v27

    move-object/from16 v27, v22

    move/from16 v22, v10

    goto :goto_2

    :cond_4
    move-object/from16 v25, v4

    move/from16 v27, v12

    move/from16 v26, v13

    move-object/from16 v12, v20

    move-object/from16 v13, v22

    move-object/from16 v4, v23

    .line 42
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 43
    invoke-virtual/range {v19 .. v19}, Landroid/database/MatrixCursor;->getCount()I

    move-result v14

    if-lt v14, v15, :cond_5

    move/from16 v20, v7

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v4, v16

    move-object/from16 v12, v17

    move-object/from16 v10, v19

    move/from16 v7, v26

    move/from16 v19, p3

    move/from16 v26, v11

    move/from16 v11, v27

    move-object/from16 v27, v13

    goto/16 :goto_6

    :cond_5
    move/from16 v14, p3

    .line 44
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v20, v7

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->g(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move/from16 v7, v26

    .line 46
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move/from16 v22, v10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v10, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move/from16 v26, v11

    move-object/from16 v28, v12

    .line 48
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 49
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v11, v27

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v13

    const v13, 0x7f130483

    invoke-static {v10, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->L(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    .line 55
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    .line 57
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v19

    .line 58
    invoke-virtual {v10, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_4

    :cond_6
    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v4, v18

    move-object/from16 v10, v19

    move/from16 v7, v26

    move/from16 v26, v11

    move/from16 v11, v27

    move-object/from16 v27, v13

    :goto_4
    move-object/from16 v18, v4

    move/from16 v19, v14

    goto/16 :goto_5

    :cond_7
    move/from16 v20, v7

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v4, v18

    move-object/from16 v10, v19

    move/from16 v7, v26

    move/from16 v12, p3

    move/from16 v26, v11

    move/from16 v11, v27

    move-object/from16 v27, v13

    .line 59
    invoke-virtual {v0, v14}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->f(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 60
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->getCount()I

    move-result v13

    if-lt v13, v15, :cond_8

    move-object/from16 v12, v17

    goto/16 :goto_7

    :cond_8
    move/from16 v13, v21

    .line 61
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v4

    .line 62
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->g(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 63
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move/from16 v19, v12

    move/from16 v21, v13

    .line 65
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 66
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f130483

    invoke-static {v4, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->L(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    .line 74
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v17

    .line 75
    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_6

    :cond_9
    move/from16 v19, v12

    move/from16 v21, v13

    goto :goto_5

    :cond_a
    move-object/from16 v18, v4

    move/from16 v19, v12

    :goto_5
    move-object/from16 v4, v16

    move-object/from16 v12, v17

    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 76
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v16, v4

    move v13, v7

    move-object/from16 v17, v12

    move/from16 p3, v19

    move/from16 v7, v20

    move/from16 v14, v24

    move-object/from16 v4, v25

    move-object/from16 v20, v28

    move-object/from16 v19, v10

    move v12, v11

    move/from16 v10, v22

    move/from16 v11, v26

    move-object/from16 v22, v27

    goto/16 :goto_1

    :cond_b
    move-object/from16 v12, v17

    move-object/from16 v10, v19

    goto :goto_7

    :cond_c
    move-object v10, v11

    .line 77
    :goto_7
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1

    :catch_0
    const-string v2, "Provider"

    const-string v3, "Text resource not found exception"

    .line 78
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    .line 79
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_d

    .line 80
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p1, "Provider"

    const-string p2, "Search: not support delete"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Search: queryInternal grant permission name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Provider"

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-ogg"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final g(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Provider"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search:  getType uri : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vnd.android.cursor.dir/audio"

    return-object p1

    :cond_0
    const-string p1, "Search: not support getType"

    .line 3
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x7f110000

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x0

    aput-object p3, v4, v5

    .line 4
    invoke-virtual {p1, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f110003

    .line 5
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 6
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    .line 7
    invoke-virtual {p1, p3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public final i(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/musiclibrary/ui/util/b;->h(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->j(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->j(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4
    throw p3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p1, "Provider"

    const-string p2, "Search: not support insert"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    const-string p1, "Provider"

    const-string p2, "Search: queryInternal revoke granted permission"

    .line 2
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "SMUSIC-Provider"

    const-string v1, "Search: onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "Provider"

    const-string p2, "openFile : only album art uri is valid request."

    .line 2
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/e$n;->a:Landroid/net/Uri;

    .line 6
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e(Landroid/content/Context;Landroid/net/Uri;)V

    .line 8
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/b;->f(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->j(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->j(Landroid/content/Context;Landroid/net/Uri;)V

    .line 10
    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "query uri : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Provider"

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p2, "limit"

    if-nez p4, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    aget-object p3, p4, p5

    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    aget-object p1, p4, p5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p1, "Provider"

    const-string p2, "Search: not support update"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
