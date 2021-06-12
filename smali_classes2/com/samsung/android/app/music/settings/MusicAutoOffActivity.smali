.class public Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;
.super Lcom/samsung/android/app/music/settings/SettingsListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/settings/AutoOffControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/support/v7/app/SeslTimePickerDialog;

.field private final f:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/support/v7/app/SeslTimePickerDialog$OnTimeSetListener;

.field private final i:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;-><init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->f:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;-><init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->g:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$3;-><init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->h:Landroid/support/v7/app/SeslTimePickerDialog$OnTimeSetListener;

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;-><init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->i:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c:I

    return p0
.end method

.method private a(I)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->invokeAutoOff(Landroid/content/Context;I)J

    move-result-wide v0

    const-string p1, "music_auto_off_target_time"

    .line 120
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 223
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 225
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 226
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 227
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b038e

    .line 228
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(I)V

    return-void
.end method

.method private b(I)I
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 140
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->b(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d:I

    return p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b:I

    return p0
.end method


# virtual methods
.method a()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
    .locals 1

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;-><init>()V

    return-object v0
.end method

.method public a(II)V
    .locals 2

    const v0, 0x36ee80

    mul-int v0, v0, p1

    const v1, 0xea60

    mul-int v1, v1, p2

    add-int/2addr v0, v1

    .line 126
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b(I)I

    move-result v1

    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(I)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    .line 129
    iget v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b:I

    if-ne v1, v0, :cond_0

    .line 130
    iput p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c:I

    .line 131
    iput p2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d:I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->onBackPressed()V

    return-void
.end method

.method b()I
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "music_auto_off_entry_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->f:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "SleepTimer"

    const/4 v3, 0x1

    .line 70
    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/settings/AutoOffControllable;)V

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a:I

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    const/16 v2, -0x3e7

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b:I

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "music_auto_off_custom_hour"

    .line 79
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c:I

    const-string v2, "music_auto_off_custom_min"

    .line 80
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d:I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-nez p1, :cond_1

    .line 86
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "403"

    .line 87
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-super {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "MSAF"

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->b(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 193
    invoke-static {p1, p2, p4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "403"

    const-string p4, "5051"

    sget-object p5, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    .line 198
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 196
    invoke-virtual {p1, p2, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "settings_sleepTimer"

    sget-object p4, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->a:Ljava/util/List;

    .line 201
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 200
    invoke-static {p1, p2, p4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b:I

    if-ne p3, p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/SeslTimePickerDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 205
    :cond_0
    new-instance p1, Landroid/support/v7/app/SeslTimePickerDialog;

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->h:Landroid/support/v7/app/SeslTimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c:I

    iget v4, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d:I

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroid/support/v7/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->i:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/SeslTimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    const p2, 0x7f0b00f3

    invoke-virtual {p1, p2}, Landroid/support/v7/app/SeslTimePickerDialog;->setTitle(I)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/SeslTimePickerDialog;->show()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->b(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(I)V

    const/4 p1, 0x1

    .line 214
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e:Landroid/support/v7/app/SeslTimePickerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/SeslTimePickerDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    :cond_1
    return-void
.end method

.method public y_()Z
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->onBackPressed()V

    return v2

    .line 154
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(II)V

    const/4 v0, 0x1

    return v0
.end method
