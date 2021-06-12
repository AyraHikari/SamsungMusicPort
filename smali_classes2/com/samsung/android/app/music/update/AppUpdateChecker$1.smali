.class Lcom/samsung/android/app/music/update/AppUpdateChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/update/AppUpdateChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/update/AppUpdateChecker;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5

    .line 71
    invoke-static {}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAppUpdateCheckListener() Have got update status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  resultVersionCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    .line 78
    invoke-static {v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "com.sec.android.app.music.KEP_CHECKED_DEPLOYED_VERSION"

    .line 83
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le p2, v0, :cond_1

    const-string v4, "com.sec.android.app.music.KEP_CHECKED_DEPLOYED_VERSION"

    .line 85
    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    if-ne p1, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 86
    :goto_0
    invoke-interface {v2, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_CARD_NO_MORE_SEE"

    .line 88
    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    .line 92
    invoke-static {p2}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object p2

    iget-object v4, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-static {v4}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lt p2, v0, :cond_2

    if-eqz v0, :cond_2

    const-string p2, "com.sec.android.app.music.KEP_APP_UPDATE_TICKET"

    .line 94
    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string p2, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    if-ne p1, v1, :cond_3

    const/4 v3, 0x1

    .line 97
    :cond_3
    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    if-ne p1, v1, :cond_7

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    .line 104
    invoke-static {p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.samsung.radio.start_client.force_update_version"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    .line 108
    invoke-static {p2}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-static {v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_5

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mAppUpdateCheckListener() fail to get current version "

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    int-to-long p1, p2

    cmp-long p1, v2, p1

    if-lez p1, :cond_6

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Lcom/samsung/android/app/music/update/AppUpdateChecker;Z)Z

    .line 118
    invoke-static {}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mAppUpdateCheckListener() force update"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    goto :goto_1

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    :goto_1
    return-void
.end method
