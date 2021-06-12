.class public Lcom/samsung/android/app/music/activity/SoundPlayerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.myfiles.FileProvider/"

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "0024"

    const-string v2, "In my files"

    .line 82
    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0024"

    const-string v2, "ETC"

    .line 85
    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/util/ListUtils;->a(Landroid/content/Context;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected a(Ljava/lang/String;JJZ)V
    .locals 10

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/ListUtils;->a(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v3

    move-wide v0, p2

    .line 31
    invoke-static {v3, p2, p3}, Lcom/samsung/android/app/music/util/ListUtils;->a([JJ)I

    move-result v4

    .line 32
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, p4

    move/from16 v9, p6

    .line 33
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->openList(Ljava/lang/String;[JILjava/lang/String;ZJZ)V

    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Z)Landroid/content/Intent;

    move-result-object v0

    move-object v1, p0

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->finish()V

    return-void
.end method

.method protected a()Z
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-static {v0}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.sec.android.mmapp"

    .line 48
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-eq v0, v3, :cond_1

    .line 52
    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->c(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/util/ComponentDisabler;->b(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/SoundPlayerActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
