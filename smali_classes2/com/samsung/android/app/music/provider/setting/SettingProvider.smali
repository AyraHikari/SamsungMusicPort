.class public final Lcom/samsung/android/app/music/provider/setting/SettingProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/setting/SettingProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/setting/SettingProvider$Companion;


# instance fields
.field private final b:Z

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/setting/SettingProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/setting/SettingProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a:Lcom/samsung/android/app/music/provider/setting/SettingProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 24
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->d:Landroid/content/UriMatcher;

    return-void
.end method

.method private final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0
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

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 109
    array-length v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 110
    new-array v3, v3, [Ljava/lang/String;

    .line 112
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 191
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

    .line 112
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 113
    invoke-static {p2, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->b:Z

    if-eqz p2, :cond_0

    const-string p2, "SettingProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove cache from delete | key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "SettingProvider"

    const-string p2, "This function is not supported. So do not call this."

    .line 83
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vnd.com.sec.android.app.music.setting.dir/setting"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 66
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-boolean v2, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "SettingProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make cache from insert | key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "SettingProvider"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    const-string v1, "database"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    const-string v1, "setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-lez p2, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a:Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SettingDBHelper.getInsta\u2026context).writableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.setting"

    const-string v2, "setting/*"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SettingProvider"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "setting"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "name=?"

    .line 44
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    const-string p1, "database"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 53
    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v9, p5

    .line 49
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string p3, "uri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 94
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    iget-boolean p3, p0, Lcom/samsung/android/app/music/provider/setting/SettingProvider;->b:Z

    if-eqz p3, :cond_1

    const-string p3, "SettingProvider"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "make cache from insert | key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | value: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "SettingProvider"

    const-string p2, "This function is not supported. So do not call this."

    .line 97
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
