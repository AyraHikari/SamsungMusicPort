.class public final Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afterInsert() start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "afterInsert() end"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "context"

    move-object v8, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    move-object v9, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    move-object v10, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afterUpdate() start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0xcd

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 66
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v0, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I

    const/4 v0, 0x1

    .line 77
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "afterUpdate() end"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 8

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "db"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object p3

    const-string p4, "afterDelete() start"

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I

    const/4 p1, 0x1

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "afterDelete() end"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afterBulkInsert() start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;->a(Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JZILjava/lang/Object;)I

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/provider/AudioPlaylistTracksMapTriggerHelper;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "afterBulkInsert() end"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
