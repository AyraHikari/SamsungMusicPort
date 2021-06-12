.class final Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->d(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 150
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/StethoUtils;->a(Lokhttp3/OkHttpClient$Builder;)V

    .line 151
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;

    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 156
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    const-string v3, "ReportDeviceAccess"

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestReportDeviceAccessHistory - sUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v3, Lokhttp3/FormBody$Builder;

    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->a()Lokhttp3/FormBody;

    move-result-object v3

    .line 164
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->a(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v1

    .line 168
    :try_start_0
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->a()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "ReportDeviceAccess"

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestReportDeviceAccessHistory - response code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Lokhttp3/Response;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lokhttp3/Response;->c()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    .line 181
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 185
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 186
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->a:Landroid/content/Context;

    const-string v3, "music_player_pref"

    .line 189
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    iget-object v3, p0, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess$2;->b:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x2a53bf82

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const v6, 0x46354a3f

    if-eq v5, v6, :cond_2

    const v6, 0x654323a8

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "my_music_tab"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v5, "discover_tab"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const-string v5, "search_tab"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    const-string v3, "ReportDeviceAccess"

    goto :goto_2

    :pswitch_0
    const-string v3, "ReportDeviceAccess"

    const-string v4, "Tab.DISCOVER"

    .line 205
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_reported_date_discover"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :pswitch_1
    const-string v3, "ReportDeviceAccess"

    const-string v4, "Tab.SEARCH"

    .line 199
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_reported_date_search"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :pswitch_2
    const-string v3, "ReportDeviceAccess"

    const-string v4, "Tab.MY_MUSIC"

    .line 193
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_reported_date_my_music"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :goto_2
    const-string v4, "Tab - default"

    .line 211
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_reported_date"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 218
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 223
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_4

    .line 226
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 227
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_6
    :goto_4
    return-void

    :catch_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 172
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
