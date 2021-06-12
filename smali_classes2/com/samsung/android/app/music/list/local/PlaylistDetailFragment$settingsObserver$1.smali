.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->j(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "RecommendTracks.getContentUri(playlistId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 276
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->j(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Z)V

    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;J)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Landroid/database/Cursor;IZ)V

    goto :goto_0

    :cond_4
    const-string p1, "UiList"

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " settingsObserver - fragment already has recommended tracks."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
