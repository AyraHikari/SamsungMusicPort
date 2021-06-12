.class Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/Syncable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->a:Landroid/content/Context;

    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->b:Z

    .line 25
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 32
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->a:Landroid/content/Context;

    const-string v2, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    iget-boolean v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->b:Z

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->a:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 36
    invoke-static {v2, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->b:[I

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->c:Ljava/lang/String;

    .line 35
    invoke-static {v1, v2, v4, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Z[ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->a:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 41
    invoke-static {v2, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a:[I

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->c:Ljava/lang/String;

    .line 40
    invoke-static {v1, v2, v4, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Ljava/util/EnumSet;Z[ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    .line 46
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.music/"

    .line 48
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "update_folders_info"

    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;)V

    return-object v1

    .line 54
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpInfo;

    return-object v0
.end method
