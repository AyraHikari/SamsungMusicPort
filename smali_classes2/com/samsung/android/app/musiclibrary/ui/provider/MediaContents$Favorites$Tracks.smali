.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracks"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.sec.android.app.music/audio/media/favorite_tracks"

    .line 1359
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    .line 1361
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    .line 1362
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pre_insert"

    const-string v2, "pre_insert"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->b:Landroid/net/Uri;

    .line 1364
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    .line 1365
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->c:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/media/favorite_tracks/info"

    .line 1369
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->d:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/media/favorite_tracks/online_sync"

    .line 1372
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->e:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6

    .line 1394
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->d:Landroid/net/Uri;

    const-string v0, "sort_by"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1395
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x4

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 1397
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1398
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1394
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    .line 1400
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    const/4 v2, 0x4

    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, -0x1

    if-ne v2, p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    return v0
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 3

    .line 1413
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "move"

    const-string v2, "true"

    .line 1414
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1415
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "play_order_from"

    .line 1416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "play_order_to"

    .line 1417
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 1418
    invoke-static {p0, v0, v1, p1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
