.class public final Lcom/samsung/android/app/music/provider/SpotifyProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/SpotifyProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/SpotifyProvider$Companion;

.field private static final e:Ljava/lang/String;

.field private static final f:Landroid/content/UriMatcher;

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/music/provider/SpotifyProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/SpotifyProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->a:Lcom/samsung/android/app/music/provider/SpotifyProvider$Companion;

    .line 196
    const-class v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    .line 202
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "com.sec.android.app.music"

    const-string v2, "spotify/chart"

    const/16 v3, 0x3f2

    .line 203
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicProviderHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    return-void
.end method

.method private final a(Landroid/net/Uri;[Landroid/content/ContentValues;I)I
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 221
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 222
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 107
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 224
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 108
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/app/music/provider/SpotifyProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 113
    :cond_4
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 116
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    return v3

    :catchall_0
    move-exception p1

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private final a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    const/16 v2, 0x3f2

    if-ne p2, v2, :cond_1

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "spotify_chart"

    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    .line 85
    sget-object p3, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 185
    array-length v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 186
    new-array v3, v3, [Ljava/lang/String;

    .line 188
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->b()I

    move-result v5

    .line 188
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 189
    invoke-static {p2, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "spotify_chart"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 163
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 164
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 159
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "spotify_chart"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 136
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://com.sec.android.app.music/spotify"

    .line 230
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "Uri.parse(this)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 133
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/SpotifyProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;I)I

    move-result p1

    .line 100
    sget-object p2, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bulkInsert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items are inserted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const-string v2, "uri"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "limit"

    .line 36
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "groupBy"

    .line 37
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sget-object v4, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_1

    const-string v4, "spotify_chart"

    .line 42
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 48
    iget-object v4, v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    check-cast v2, Ljava/util/List;

    move-object/from16 v5, p4

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/music/provider/SpotifyProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    sget-object v5, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query uri ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " time_takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v12

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 59
    iget-object v3, v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v2

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 68
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/SpotifyProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p2, "method"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 178
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyProvider;->g:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
