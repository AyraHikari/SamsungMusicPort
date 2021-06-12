.class public Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "music_samsung_analytics"

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "5038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_1
    const-string v0, "5037"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_2
    const-string v0, "5036"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_3
    const-string v0, "5035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_4
    const-string v0, "5034"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_5
    const-string v0, "5033"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_6
    const-string v0, "5032"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_7
    const-string v0, "5031"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_2

    :pswitch_8
    const-string p0, "settings_manageMyMusicTabs_composers"

    goto :goto_2

    :pswitch_9
    const-string p0, "settings_manageMyMusicTabs_folders"

    goto :goto_2

    :pswitch_a
    const-string p0, "settings_manageMyMusicTabs_genres"

    goto :goto_2

    :pswitch_b
    const-string p0, "settings_manageMyMusicTabs_artists"

    goto :goto_2

    :pswitch_c
    const-string p0, "settings_manageMyMusicTabs_albums"

    goto :goto_2

    :pswitch_d
    const-string p0, "settings_manageMyMusicTabs_tracks"

    goto :goto_2

    :pswitch_e
    const-string p0, "settings_manageMyMusicTabs_playlists"

    goto :goto_2

    :pswitch_f
    const-string p0, "settings_manageMyMusicTabs_heart"

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x18d239
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungAnalyticsPreference"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->start()V

    return-void
.end method
