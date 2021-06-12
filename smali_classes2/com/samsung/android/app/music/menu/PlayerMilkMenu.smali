.class public final Lcom/samsung/android/app/music/menu/PlayerMilkMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/navigate/NavigationManager;

.field private final c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

.field private final f:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a:Landroid/content/Context;

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b:Lcom/samsung/android/app/music/navigate/NavigationManager;

    .line 27
    instance-of p1, p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-nez p1, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 32
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;->k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 61
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    const v0, 0x80002

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->l()Z

    move-result p2

    .line 61
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;->l()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 68
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    const v0, 0x80002

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->h()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 68
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private final c()V
    .locals 6

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_7

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_4

    .line 102
    :cond_6
    new-instance v1, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/model/SimpleTrack;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method private final c(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 75
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    const v0, 0x80002

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->i()Z

    move-result p2

    .line 75
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final d()V
    .locals 8

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    sget-object v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final d(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 82
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    const v0, 0x80002

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->j()Z

    move-result p2

    .line 82
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final e()V
    .locals 7

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 120
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b:Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v1, :cond_3

    const v2, 0x20000002

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    :cond_3
    return-void
.end method

.method private final e(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 89
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    const v0, 0x80002

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 v1, 0x1

    .line 89
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private final f()V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 127
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 128
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->b()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method private final g()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305ca

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1301a8

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->b(Landroid/view/Menu;I)V

    const v0, 0x7f1305cd

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->c(Landroid/view/Menu;I)V

    const v0, 0x7f1305ce

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->d(Landroid/view/Menu;I)V

    const v0, 0x7f1305cf

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->e(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1301a8

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305ca

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->g()V

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->f()V

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->e()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->c()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;->d()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305cd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
