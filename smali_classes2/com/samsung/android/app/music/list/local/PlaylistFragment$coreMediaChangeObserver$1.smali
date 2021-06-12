.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "action"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x41ee6927

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "OOBE_flag"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a(Z)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a()V

    :cond_1
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
