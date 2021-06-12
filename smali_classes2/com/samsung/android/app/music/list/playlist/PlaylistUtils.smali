.class public final Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 357
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;->INSTANCE:Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAudioIds(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    return-object v0

    .line 373
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "audio_id"

    .line 374
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const-string p3, "cp_attrs != 524296"

    move-object v5, p3

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 381
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/ListUtils;->b(Landroid/content/Context;J)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object v7

    const-string p1, "uri"

    .line 383
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 392
    move-object p1, p0

    check-cast p1, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    if-nez p0, :cond_2

    goto :goto_1

    .line 403
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 384
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_3

    .line 408
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, p0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic getAudioIds$default(Landroid/content/Context;JZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 367
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;->getAudioIds(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final toArray(Ljava/util/ArrayList;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p0

    return-object p0
.end method
