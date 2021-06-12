.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.super Landroid/support/v4/app/JobIntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Z

.field private static final d:Landroid/net/Uri;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b:Ljava/lang/String;

    const-string v0, "external"

    .line 215
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->d:Landroid/net/Uri;

    const-string v0, "count(_id) AS _id_count"

    const-string v1, "count(*) AS all_count"

    .line 216
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 1

    .line 449
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;->a:Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/Syncable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1}, Lcom/samsung/android/app/music/provider/sync/Syncable;->a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    move-result-object p1

    return-object p1

    .line 451
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sync event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;"
        }
    .end annotation

    .line 459
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    move-result-object v0

    const-string v1, "SyncAudioHelper.sync(context, operations, from)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 461
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    .line 462
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 465
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 471
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a:[I

    .line 467
    invoke-static {p1, p2, v5, v1, p3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Z[ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    move-result-object v1

    const-string v2, "SyncMdrmAudioHelper.sync\u2026   from\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    :cond_2
    invoke-static {p1, p2, v4, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object p3

    .line 478
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "content://com.sec.android.app.music/"

    .line 516
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "Uri.parse(this)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "update_folders_info"

    .line 480
    invoke-virtual {v2, v6, v7, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 487
    :cond_4
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p2, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 488
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->a(Landroid/content/Context;)Z

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 494
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a()Z

    move-result v3

    if-nez v3, :cond_8

    .line 493
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 492
    invoke-virtual {p2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz v2, :cond_6

    goto :goto_3

    .line 497
    :cond_6
    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p3}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 498
    :cond_7
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    invoke-direct {p2, p1, v4}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    goto :goto_4

    .line 496
    :cond_8
    :goto_3
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    invoke-direct {p2, p1, v5}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    move-result-object p1

    const-string p2, "SyncHeartContentsImpl(context, false).doSync()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    :cond_9
    :goto_4
    new-instance p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    const-string p2, "playlistResult"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, p3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    return-object p1
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 8

    .line 431
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->d:Landroid/net/Uri;

    .line 432
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 429
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 436
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 437
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "all_count"

    .line 438
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    move-object v0, v4

    :cond_1
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 439
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v3

    .line 442
    :cond_3
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 436
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final a(Landroid/content/Context;[J)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;[J)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/content/Context;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->b(Landroid/content/Context;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 209
    sget-boolean v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->c:Z

    return v0
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    sget-boolean v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->c:Z

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b:Ljava/lang/String;

    const-string v1, "onHandleWork start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.music.extra.SYNC_LOG_MESSAGE"

    .line 370
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "<<UNKNOWN>>"

    :goto_0
    const-string v2, "com.sec.android.app.music.extra.SYNC_EVENT"

    const/4 v3, -0x1

    .line 371
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 372
    const-class v4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const-string v5, "com.sec.android.app.music.extra.SYNC_OPERATIONS"

    .line 373
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Ljava/lang/Iterable;

    .line 513
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 514
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    check-cast v6, Ljava/lang/String;

    const-string v8, "it"

    .line 374
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_2
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    check-cast v5, Ljava/util/EnumSet;

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_5

    .line 375
    invoke-virtual {v4}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ERROR SNAPSHOT [action : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", from : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", syncEvent : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", syncOperations : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "context"

    .line 378
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 379
    sget-boolean p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->c:Z

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent has no valid extra. check sync log"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 383
    :cond_5
    invoke-virtual {v4}, Ljava/util/EnumSet;->size()I

    move-result v3

    if-ne v3, v6, :cond_6

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eq v2, v6, :cond_7

    if-nez v3, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    .line 387
    sget-object v8, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->a:Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;

    const-string v9, "context"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    :cond_8
    const-string v8, "context"

    .line 391
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v7, :cond_9

    .line 393
    new-array p1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - no permission : skip sync"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    if-nez v3, :cond_c

    .line 399
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v7, :cond_b

    .line 402
    new-array p1, v6, [Ljava/lang/String;

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - MediaProvider is not syncable state. cursor invalid."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 401
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_b
    return-void

    .line 409
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4ac0835d

    if-eq v7, v8, :cond_f

    const v4, 0x61ddeb63

    if-eq v7, v4, :cond_e

    goto :goto_4

    :cond_e
    const-string v4, "com.sec.android.app.music.action.LOCAL_SYNC_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 410
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    move-result-object p1

    goto :goto_5

    :cond_f
    const-string v2, "com.sec.android.app.music.action.LOCAL_SYNC_OPERATIONS"

    .line 409
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "operations"

    .line 411
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    move-result-object p1

    goto :goto_5

    .line 413
    :cond_10
    :goto_4
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong action delivered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 414
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    .line 416
    :goto_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    :cond_11
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_12

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.action.LOCAL_SYNC_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.music"

    .line 418
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.extra.SYNCED_INFO"

    .line 419
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    :cond_12
    sget-boolean p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->c:Z

    if-eqz p1, :cond_13

    .line 424
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b:Ljava/lang/String;

    const-string v0, "onHandleWork end"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
