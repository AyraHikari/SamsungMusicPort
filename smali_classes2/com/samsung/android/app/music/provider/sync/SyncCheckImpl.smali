.class Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/Syncable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$NoAvailableSourceProviderException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    const-string v0, "count(*)"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->c:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 69
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 72
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    .line 80
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 81
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkNeedSync mediaCount : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", musicCount : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    return p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    goto :goto_1

    .line 84
    :cond_3
    :try_start_2
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    const-string p2, "Target Provider\'s query is not normal. do not sync"

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    .line 87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    .line 79
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz p0, :cond_6

    if-eqz v0, :cond_5

    .line 87
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v0, p0

    goto :goto_4

    .line 74
    :cond_7
    :try_start_5
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    const-string p2, "Source Provider\'s query is not normal. do not sync"

    invoke-static {p3, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$NoAvailableSourceProviderException;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$NoAvailableSourceProviderException;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 69
    :goto_4
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    if-eqz p1, :cond_9

    if-eqz v0, :cond_8

    .line 77
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_6
    throw p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->c:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v3, "is_music=1"

    const-string v4, "cp_attrs=65537"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->c:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 47
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->d:Ljava/lang/String;

    .line 46
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.music/"

    .line 52
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "update_folders_info"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 55
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$NoAvailableSourceProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x1

    .line 59
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a:Ljava/lang/String;

    const-string v2, " Source Provider is not available. do not sync "

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    return-object v0
.end method
