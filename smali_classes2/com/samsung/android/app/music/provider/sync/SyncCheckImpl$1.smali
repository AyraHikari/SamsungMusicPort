.class final Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;->a:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v3, "is_music=1"

    const-string v4, "cp_attrs=65537"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;Ljava/util/EnumSet;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl$NoAvailableSourceProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 107
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkNeedLocalSync : Source Provider\'s query is not normal. do not sync"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    throw v0
.end method
