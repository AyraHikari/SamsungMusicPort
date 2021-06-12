.class public Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;
.super Lcom/samsung/android/app/music/settings/SettingsListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 71
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 73
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 74
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b00c9

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
    .locals 1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;-><init>()V

    return-object v0
.end method

.method b()I
    .locals 3

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a(I)I

    move-result v0

    return v0
.end method

.method c()I
    .locals 1

    const v0, 0x7f0b00c8

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;->a(Landroid/app/Activity;)V

    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "425"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 54
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;->d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->b(I)I

    move-result p1

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(I)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(J)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "425"

    const-string p4, "5281"

    .line 64
    invoke-static {p3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-virtual {p1, p2, p4, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;->finish()V

    return-void
.end method
