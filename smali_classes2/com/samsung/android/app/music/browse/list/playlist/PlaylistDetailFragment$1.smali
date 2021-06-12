.class Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$1;
.super Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment$1;->a:Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
