.class public Lcom/samsung/android/app/music/activity/MediaInfoActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaInfoActivity"


# instance fields
.field private b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

.field private final e:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;-><init>(Lcom/samsung/android/app/music/activity/MediaInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->e:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/MediaInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->d:Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0401c6

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_uri_string"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->c:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->c:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlayerDetailsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1304a2

    const-string v3, "PlayerDetailsFragment"

    .line 59
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    :cond_2
    instance-of v1, v0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    if-eqz v1, :cond_3

    .line 62
    check-cast v0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->d:Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    :cond_3
    if-nez p1, :cond_4

    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "307"

    .line 67
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 51
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "full_player_2nd_track_detail"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 93
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 94
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 106
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 107
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStop()V

    return-void
.end method
