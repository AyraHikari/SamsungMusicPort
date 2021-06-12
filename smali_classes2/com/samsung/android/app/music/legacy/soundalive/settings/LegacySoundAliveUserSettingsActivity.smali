.class public Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LegacySoundAliveUserSettingsActivity"


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->e:Z

    .line 223
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->e:Z

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(IZ)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b(IZ)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    return-object p0
.end method

.method private b()Z
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathLineOut()Z

    move-result v1

    .line 116
    sget-object v2, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDisableExtended(): BT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), LineOut("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0400c8

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0f02da

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 58
    new-instance v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    const p1, 0x7f13007c

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f130067

    .line 62
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabBackgroundResource(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v1, 0x7f02053e

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v1, 0x7f0f0378

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextColorResource(I)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v1, 0x7f0f02dd

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabIndicatorColorResource(I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a(Z)V

    .line 72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f140019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 94
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->b()V

    goto :goto_0

    .line 97
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->d:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->c()V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->finish()V

    goto :goto_0

    .line 102
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->finish()V

    .line 107
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f1301c5 -> :sswitch_1
        0x7f1305d8 -> :sswitch_0
        0x7f1305d9 -> :sswitch_2
    .end sparse-switch
.end method
