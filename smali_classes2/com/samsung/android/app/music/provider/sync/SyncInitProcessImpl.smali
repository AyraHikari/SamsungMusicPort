.class Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/Syncable;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->a:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->a(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 35
    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->c:Ljava/lang/String;

    .line 34
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 38
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    const-string v4, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 42
    invoke-static {v2, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a:[I

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->c:Ljava/lang/String;

    .line 41
    invoke-static {v1, v2, v4, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Z[ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    move-result-object v1

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->a:Landroid/net/Uri;

    const-string v5, "update_folders_info"

    .line 48
    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_FAVORITE_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 52
    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->c:Ljava/lang/String;

    .line 51
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->b(Landroid/content/Context;)V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/provider/BackupRestoreUtil;->a(Landroid/content/Context;)Z

    .line 57
    new-instance v3, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    .line 58
    new-instance v3, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    return-object v3
.end method
