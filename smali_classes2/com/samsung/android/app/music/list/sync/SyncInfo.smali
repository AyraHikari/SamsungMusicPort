.class public final Lcom/samsung/android/app/music/list/sync/SyncInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/sync/SyncInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/list/sync/SyncInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/sync/SyncInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/SyncInfo;->a:Lcom/samsung/android/app/music/list/sync/SyncInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 54
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$OnlineSyncInfo;->a:Landroid/net/Uri;

    const-string v1, "OnlineSyncInfo.CONTENT_URI"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    .line 55
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "key=? AND name=?"

    const/4 v9, 0x2

    .line 57
    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    .line 53
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 58
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, p1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "value"

    .line 121
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 59
    invoke-static {v0, v1, v9, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->toDate$default(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    sget-object v3, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateDate - key:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", name:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", updateDate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v2, p2

    .line 58
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$OnlineSyncInfo;->a:Landroid/net/Uri;

    const-string v1, "OnlineSyncInfo.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 44
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "name"

    .line 45
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "value"

    .line 46
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveUpdateDate - result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
