.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSongList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;)[J
    .locals 6

    .line 33
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 33
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    .line 37
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public static play(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z
    .locals 0

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;->playInternal(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static playInternal(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z
    .locals 1

    .line 23
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;->getSongList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;)[J

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 24
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p2, p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JIZ)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p1
.end method
