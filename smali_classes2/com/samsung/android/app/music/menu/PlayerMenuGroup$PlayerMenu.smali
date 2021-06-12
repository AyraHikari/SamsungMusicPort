.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 8

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v5

    const v3, 0x100002

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    .line 202
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->c(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/navigate/NavigationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p5, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p5}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p5

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 234
    invoke-virtual {p5, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private final a(J)V
    .locals 2

    .line 262
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentUris.withAppended\u2026              .toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_uri_string"

    .line 265
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final a(JI)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->f(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p3}, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->b(I)I

    move-result p3

    .line 275
    invoke-static {p3}, Lcom/samsung/android/app/music/provider/MusicContents;->a(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentUris.withAppended\u2026              .toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/lang/String;I)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->f(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 171
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->c()I

    move-result p2

    const v0, 0x10001

    if-eq p2, v0, :cond_0

    const v0, 0x80001

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final b()V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtistId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v5

    const v3, 0x100003

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    .line 212
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 178
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->c()I

    move-result p2

    const v0, 0x10001

    if-eq p2, v0, :cond_0

    const v0, 0x80001

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final c()V
    .locals 9

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-UiPlayer"

    const-string v1, "performMenuSetAs() meta is empty"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;Landroid/app/Activity;JLandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method private final c(Landroid/view/Menu;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 185
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->e()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private final d()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->e(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->deleteItems()V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DETE"

    const-string v2, "Full Player"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Landroid/view/Menu;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 189
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 191
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->i()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 189
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private final e()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->c()I

    move-result v0

    const v1, 0x20004

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a(J)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->c()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a(JI)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MPDE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/view/Menu;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 198
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private final f()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1305cb

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305cc

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->b(Landroid/view/Menu;I)V

    const v0, 0x7f1305bd

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->c(Landroid/view/Menu;I)V

    const v0, 0x7f13001e

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->d(Landroid/view/Menu;I)V

    const v0, 0x7f1305d4

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->e(Landroid/view/Menu;I)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 142
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 164
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->e()V

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->b()V

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->a()V

    goto :goto_0

    .line 162
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->d()V

    goto :goto_0

    .line 163
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;->c()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13001e -> :sswitch_4
        0x7f1305bd -> :sswitch_3
        0x7f1305cb -> :sswitch_2
        0x7f1305cc -> :sswitch_1
        0x7f1305d4 -> :sswitch_0
    .end sparse-switch
.end method
