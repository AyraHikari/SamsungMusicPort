.class public final Lcom/samsung/android/app/music/provider/RestoreContentsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sec.android.app.music/"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->a:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->b:Landroid/net/Uri;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .line 56
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    const-string v3, "extra=?"

    const-string v0, "pre"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const-string v2, "restore_action"

    .line 63
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 65
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    .line 67
    sget-object v5, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preRestore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    const-string v3, "extra=?"

    const-string v4, "pre"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 56
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 75
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw p0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const/16 v0, 0x2719

    if-ne p1, v0, :cond_0

    .line 38
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "restore_action"

    const v3, 0xf45c4

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "from_version"

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "to_version"

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "extra"

    const-string v2, "post"

    .line 42
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "restore_list"

    const-string v2, "restore_action"

    .line 43
    invoke-virtual {p0, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    if-gt p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "restore_action"

    const v0, 0xf45c5

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "extra"

    const-string v0, "post"

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "restore_list"

    const-string v0, "restore_action"

    .line 51
    invoke-virtual {p0, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .line 79
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    const-string v3, "extra=?"

    const-string v0, "post"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const-string v2, "restore_action"

    .line 86
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 88
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    .line 90
    sget-object v5, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postRestore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const v4, 0xf45c4

    if-eq v3, v4, :cond_1

    .line 96
    sget-object v4, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postRestore invalid action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    invoke-static {p0, v2, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 79
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 100
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p0

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->a:Landroid/net/Uri;

    const-string v1, "update_heart_contents"

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
