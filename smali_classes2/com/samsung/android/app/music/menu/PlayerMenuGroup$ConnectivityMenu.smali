.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;
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
    name = "ConnectivityMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

.field private final b:Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b:Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    .line 356
    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c:Z

    .line 357
    invoke-static {p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->d:Z

    return-void
.end method

.method private final a()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b:Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;->g()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0292

    const/4 v2, 0x1

    .line 458
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b:Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 386
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 387
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->m()Z

    move-result p2

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b:Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 391
    iget-boolean v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 392
    iget-boolean v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 388
    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz p2, :cond_5

    .line 397
    iget-boolean p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c:Z

    if-nez p2, :cond_5

    const p2, 0x7f020232

    goto :goto_2

    :cond_5
    const p2, 0x7f020231

    .line 395
    :goto_2
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void

    :cond_6
    return-void
.end method

.method private final b()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "CHPL"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    return-void
.end method

.method private final b(Landroid/view/Menu;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 404
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 410
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->G:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->d:Z

    if-eqz p2, :cond_2

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->i()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->j()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->l()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->p()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 404
    :cond_2
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private final c()V
    .locals 6

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 482
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->startWfdPickerDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method private final c(Landroid/view/Menu;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 416
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 424
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-ge p2, v0, :cond_2

    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->G:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->d:Z

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->i()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->j()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->l()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->p()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v1, 0x1

    .line 416
    :cond_2
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private final d()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 487
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeSoundPathTo(I)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private final d(Landroid/view/Menu;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 430
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 437
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->f()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->m()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->q()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->r()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->i()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 430
    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private final e()V
    .locals 1

    const/4 v0, 0x1

    .line 494
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeSoundPathTo(I)V

    return-void
.end method

.method private final e(Landroid/view/Menu;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 443
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 449
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->f()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->q()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->r()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->i()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 443
    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305c8

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305d0

    .line 363
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b(Landroid/view/Menu;I)V

    const v0, 0x7f1305d1

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c(Landroid/view/Menu;I)V

    const v0, 0x7f1305d2

    .line 365
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->d(Landroid/view/Menu;I)V

    const v0, 0x7f1305d3

    .line 366
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->e(Landroid/view/Menu;I)V

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

    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305c8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 376
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->e()V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->d()V

    goto :goto_0

    .line 374
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->c()V

    goto :goto_0

    .line 373
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->b()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;->a()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x7f1305d0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
