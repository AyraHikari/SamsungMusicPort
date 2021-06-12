.class public final Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b()Ljava/lang/String;

    move-result-object p3

    const-string v0, "beforeDelete() start"

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p4, v0, :cond_1

    goto :goto_3

    .line 32
    :cond_1
    move-object p4, p5

    check-cast p4, Ljava/lang/CharSequence;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-eqz p4, :cond_4

    const-string p4, ""

    goto :goto_2

    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WHERE "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 34
    :goto_2
    sget-object p5, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category_type=65540 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "category_id IN (SELECT _id FROM audio_playlists "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x29

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 34
    invoke-virtual {p5, p1, p2, p4, p6}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "beforeDelete() end"

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p3
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afterUpdate() start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "sort_by"

    .line 59
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p3, v0

    if-eqz p3, :cond_2

    const-string v1, "audio_playlists"

    const-string p3, "_id"

    .line 66
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v3, p4

    move-object v4, p5

    .line 64
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    check-cast p3, Ljava/io/Closeable;

    const/4 p4, 0x0

    .line 72
    check-cast p4, Ljava/lang/Throwable;

    :try_start_0
    move-object p5, p3

    check-cast p5, Landroid/database/Cursor;

    if-eqz p5, :cond_1

    .line 73
    invoke-interface {p5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 83
    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 75
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I

    .line 77
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {p3, p4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p4, p1

    :try_start_1
    throw p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p3, p4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 79
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistsTriggerHelper;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "afterUpdate() end"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
