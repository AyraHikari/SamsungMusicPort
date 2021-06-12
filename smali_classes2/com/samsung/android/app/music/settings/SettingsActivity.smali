.class public Lcom/samsung/android/app/music/settings/SettingsActivity;
.super Lcom/samsung/android/app/music/settings/SettingServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;
    }
.end annotation


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000f5

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_0
    const v0, 0x7f130203

    .line 124
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 5

    .line 142
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 144
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 145
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 146
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b0088

    const/4 v1, 0x1

    .line 147
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsActivity;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    .line 104
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const v1, 0x7f10008f

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    sub-int/2addr p1, v0

    .line 110
    div-int/lit8 v1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 116
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 3

    const v0, 0x7f130125

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0311

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f020320

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(I)V

    .line 85
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->b(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04005d

    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Landroid/app/Activity;)V

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->d(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "401"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 45
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "no_mobile_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "no_mobile_data"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "MusicSettings"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f130125

    const-string v2, "MusicSettings"

    .line 57
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p1

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;-><init>(Lcom/samsung/android/app/music/settings/SettingsActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->b(I)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->d()V

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
