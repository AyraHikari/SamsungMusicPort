.class final Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/sync/ListSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerHandler"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;

.field private final b:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

.field private final c:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

.field private d:Ljava/lang/Integer;

.field private final e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

.field private final f:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Landroid/os/HandlerThread;)V
    .locals 1

    const-string v0, "syncManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->f:Landroid/os/HandlerThread;

    .line 147
    new-instance p1, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->a:Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;

    .line 148
    new-instance p1, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->b:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    .line 149
    new-instance p1, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->c:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 159
    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->d:Ljava/lang/Integer;

    .line 160
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    .line 172
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->b(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    move-result-object v1

    const-string v2, "my_music_mode_option"

    .line 172
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result p1

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->e:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;)V

    const-string v1, "ListSyncManager"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " quiteSafely() result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", thread="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->c:Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/sync/FavoriteCategorySyncable;->a()Z

    goto :goto_1

    .line 165
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->b:Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/sync/FavoriteTrackSyncable;->a()Z

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->a:Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/sync/PlaylistSyncable;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_1
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->d:Ljava/lang/Integer;

    return-void

    :goto_2
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->d:Ljava/lang/Integer;

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
