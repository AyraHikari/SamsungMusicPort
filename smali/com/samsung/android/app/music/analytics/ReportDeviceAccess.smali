.class public Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    sput-boolean v0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ReportDeviceAccess"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report  tab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "metachanged"

    if-ne p1, v0, :cond_0

    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "metachanged"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->b(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->d(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$1;

    invoke-direct {p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$1;-><init>()V

    .line 122
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 4

    const-string v0, "ReportDeviceAccess"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResultCode - json : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "ReportDeviceAccess"

    const-string v1, "parseJsonResponse() json is null"

    .line 277
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 281
    :cond_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 283
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 284
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 285
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    .line 287
    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    const-string v2, "resultCode"

    .line 292
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 293
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result p0

    move v0, p0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 300
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return v0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    :goto_3
    throw p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ReportDeviceAccess"

    const-string p1, "FEATURE_ON is false"

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 59
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ReportDeviceAccess"

    const-string p1, "READ_PHONE_STATE is off"

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 64
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ReportDeviceAccess"

    const-string p1, "User is not to agree the Legal Info yet."

    .line 65
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "music_player_pref"

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2a53bf82

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const v3, 0x46354a3f

    if-eq v2, v3, :cond_4

    const v3, 0x654323a8

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "my_music_tab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "discover_tab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const-string v2, "search_tab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "last_reported_date"

    .line 90
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_0
    const-string p1, "ReportDeviceAccess"

    const-string v2, "Tab.DISCOVER"

    .line 84
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_reported_date_discover"

    .line 86
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_1
    const-string p1, "ReportDeviceAccess"

    const-string v2, "Tab.SEARCH"

    .line 79
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_reported_date_search"

    .line 81
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    const-string p1, "ReportDeviceAccess"

    const-string v2, "Tab.MY_MUSIC"

    .line 74
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_reported_date_my_music"

    .line 76
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_7

    const-string p0, "ReportDeviceAccess"

    const-string p1, "lastReportedDate is null"

    .line 95
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 99
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "ReportDeviceAccess"

    const-string p1, "lastReportedDate is same with today"

    .line 105
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    const-string p0, "ReportDeviceAccess"

    const-string p1, "lastReportedDate is not same with today"

    .line 108
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ReportDeviceAccess"

    const-string v1, "requestReportDeviceAccessHistory"

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 234
    invoke-static {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportDeviceAccess"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequest - url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p0, "ReportDeviceAccess"

    const-string p1, "getRequest - url is null"

    .line 237
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "/usm/user/history/accessHistory/device?"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "id=60000"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "shopId="

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "deviceId="

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "channelId="

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "uniqueId="

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, -0x1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x2a53bf82

    if-eq v0, v2, :cond_3

    const v2, 0x46354a3f

    if-eq v0, v2, :cond_2

    const v2, 0x654323a8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "my_music_tab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "discover_tab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "search_tab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    :cond_4
    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "ReportDeviceAccess"

    const-string p1, "toRequest- Tab - default"

    .line 265
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p0, "ReportDeviceAccess"

    const-string p1, "toRequest- Tab.STORE"

    .line 261
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "&"

    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "tab="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "DC"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const-string p0, "ReportDeviceAccess"

    const-string p1, "toRequest- Tab.RADIO"

    .line 257
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "&"

    .line 258
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "tab="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "SC"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string p0, "ReportDeviceAccess"

    const-string p1, "toRequest- Tab.MY_MUSIC"

    .line 253
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "&"

    .line 254
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "tab="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "MY"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
