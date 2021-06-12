.class Lcom/samsung/android/app/music/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9

    .line 1515
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1516
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    .line 1520
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    .line 1522
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "duplicate_option"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "skip_silences"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "similar_station"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "push_notification"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_4
    const-string v2, "smart_volume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, "my_music_mode_option"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "lock_screen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "screen_off_music"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "explicit_option"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_9
    const-string v2, "mobile_data"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_a
    const-string v2, "edge_lighting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v2, "dark_theme"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_c
    const-string v2, "barge_in"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    .line 1644
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->i(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_b

    .line 1629
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1630
    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h(Lcom/samsung/android/app/music/settings/SettingsFragment;)Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1631
    invoke-static {v1}, Lcom/samsung/android/app/music/settings/MilkSettings;->d(Z)V

    .line 1632
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->i(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    .line 1634
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5210"

    .line 1635
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    move-wide v4, v6

    .line 1634
    :cond_2
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settigns_allowPushNotifications"

    .line 1639
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "On"

    goto :goto_1

    :cond_3
    const-string p1, "Off"

    .line 1637
    :goto_1
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1619
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1620
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5209"

    .line 1621
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide v4, v6

    .line 1620
    :cond_4
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_playSimilarStations"

    .line 1625
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "On"

    goto :goto_2

    :cond_5
    const-string p1, "Off"

    .line 1623
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1608
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5208"

    .line 1609
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    move-wide v4, v6

    .line 1608
    :cond_6
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_explicitContents"

    .line 1613
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "On"

    goto :goto_3

    :cond_7
    const-string p2, "Off"

    .line 1611
    :goto_3
    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->g(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_b

    .line 1598
    :pswitch_4
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Z)V

    .line 1599
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5207"

    .line 1600
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    move-wide v4, v6

    .line 1599
    :cond_8
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_deleteDuplicatedTrackLists"

    .line 1604
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "On"

    goto :goto_4

    :cond_9
    const-string p1, "Off"

    .line 1602
    :goto_4
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1585
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    iget-object v8, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1586
    invoke-static {v8}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;)Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1585
    invoke-virtual {v1, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1587
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->g(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    .line 1588
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5202"

    .line 1589
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    move-wide v4, v6

    .line 1588
    :cond_a
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_mobileData"

    .line 1593
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "On"

    goto :goto_5

    :cond_b
    const-string p1, "Off"

    .line 1591
    :goto_5
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1577
    :pswitch_6
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1578
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v1

    if-eq v0, v1, :cond_16

    .line 1579
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1580
    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1581
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1579
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    goto/16 :goto_b

    .line 1567
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->f(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5215"

    .line 1569
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    move-wide v4, v6

    .line 1568
    :cond_c
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_edgeLighting"

    .line 1573
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "On"

    goto :goto_6

    :cond_d
    const-string p1, "Off"

    .line 1571
    :goto_6
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1564
    :pswitch_8
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    goto/16 :goto_b

    .line 1554
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1555
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5003"

    .line 1556
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    move-wide v4, v6

    .line 1555
    :cond_e
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_screenOffMusic"

    .line 1560
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "On"

    goto :goto_7

    :cond_f
    const-string p1, "Off"

    .line 1558
    :goto_7
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1544
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1545
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5002"

    .line 1546
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    move-wide v4, v6

    .line 1545
    :cond_10
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_controlViaLockScreen"

    .line 1550
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "On"

    goto :goto_8

    :cond_11
    const-string p1, "Off"

    .line 1548
    :goto_8
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1534
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1535
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5007"

    .line 1536
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    move-wide v4, v6

    .line 1535
    :cond_12
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_skipSilences"

    .line 1540
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "On"

    goto :goto_9

    :cond_13
    const-string p1, "Off"

    .line 1538
    :goto_9
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1524
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V

    .line 1525
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    const-string v2, "5006"

    .line 1526
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_14

    move-wide v4, v6

    .line 1525
    :cond_14
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V

    const-string v1, "settings_smartVolume"

    .line 1530
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "On"

    goto :goto_a

    :cond_15
    const-string p1, "Off"

    .line 1528
    :goto_a
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_b
    return-void

    :cond_17
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x682d180d -> :sswitch_c
        -0x5e312840 -> :sswitch_b
        -0x5b66d4b2 -> :sswitch_a
        -0x4e55d2d9 -> :sswitch_9
        -0x42ab8320 -> :sswitch_8
        -0x291aecbe -> :sswitch_7
        -0x16c21e00 -> :sswitch_6
        -0x1249a05c -> :sswitch_5
        -0xc6215b0 -> :sswitch_4
        0x27c01df0 -> :sswitch_3
        0x397362e0 -> :sswitch_2
        0x6e13aab2 -> :sswitch_1
        0x7ac68629 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
