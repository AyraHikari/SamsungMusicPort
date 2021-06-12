.class public Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a:Ljava/util/List;

    const-string v1, "02"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    sget-object v1, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v4, "@"

    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "com.samsung.radio.channelid"

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSettingApi"

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSetting : channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserSettingTransport;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1, v0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport;->a(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 42
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$1;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$1;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static a(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string p3, "UserSettingApi"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSetting Start : explicit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p3, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;-><init>(Landroid/content/Context;II)V

    invoke-static {p3}, Lio/reactivex/Single;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$3;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$3;-><init>()V

    new-instance p2, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$4;

    invoke-direct {p2}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$4;-><init>()V

    .line 95
    invoke-virtual {p0, p1, p2}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/model/UserSettings;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->b(Lcom/samsung/android/app/music/model/UserSettings;)V

    return-void
.end method

.method private static b(Lcom/samsung/android/app/music/model/UserSettings;)V
    .locals 3

    const-string v0, "UserSettingApi"

    const-string v1, "updateUserSetting"

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserSettings;->getExplicit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserSettings;->getExplicit()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSettingApi"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserSetting - explicit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string v1, "explicit_option"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const-string v1, "explicit_option"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
