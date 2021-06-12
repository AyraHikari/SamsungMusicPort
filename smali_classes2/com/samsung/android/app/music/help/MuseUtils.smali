.class public Lcom/samsung/android/app/music/help/MuseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "/main/main.do"

    goto :goto_0

    :pswitch_0
    const-string p0, "/tutorial/searchContactNumbers.do"

    goto :goto_0

    :pswitch_1
    const-string p0, "/ticket/searchTicketList.do"

    goto :goto_0

    :pswitch_2
    const-string p0, "/ticket/createQuestionTicket.do"

    goto :goto_0

    :pswitch_3
    const-string p0, "/faq/searchFaq.do"

    goto :goto_0

    :pswitch_4
    const-string p0, "/main/main.do"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "zh_HK"

    const-string v1, "zh_CN"

    const-string v2, "zh_TW"

    const-string v3, "en_GB"

    const-string v4, "en_US"

    const-string v5, "fr_CA"

    const-string v6, "fr_FR"

    const-string v7, "pt_PT"

    const-string v8, "es_ES"

    const-string v9, "ar_AE"

    .line 117
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 128
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 129
    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    aget-object v1, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/help/MuseUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 12

    const-string v0, "com.samsung.radio.countrycode"

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0}, Lcom/samsung/android/app/music/help/MuseUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/help/MuseUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-static {p0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->b()Ljava/lang/String;

    move-result-object v6

    .line 53
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 57
    invoke-virtual {v8}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v1

    .line 59
    :goto_0
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v10, 0x2

    if-ne p1, v10, :cond_1

    const-string p1, "INQ03"

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 64
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v1

    .line 70
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://help.content.samsung.com/csweb/auth/gosupport.do"

    .line 73
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?serviceCd="

    .line 74
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "smusic"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&chnlCd="

    .line 75
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ODC"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&targetUrl="

    .line 76
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "&_common_country="

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&_common_lang="

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "&inqTypCd="

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "&mcc="

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "&mnc="

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "&brandNm="

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "&dvcModelCd="

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "&saccountID="

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "&dvcOSVersion=Android "

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "&odcVersion=SamsungMusic "

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string p0, "MuseUtils"

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URL : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
