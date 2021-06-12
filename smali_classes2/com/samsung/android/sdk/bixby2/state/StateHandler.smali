.class public Lcom/samsung/android/sdk/bixby2/state/StateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StateHandler"

.field private static b:Lcom/samsung/android/sdk/bixby2/state/StateHandler;


# instance fields
.field private c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/android/sdk/bixby2/state/StateHandler;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->b:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    invoke-direct {v1}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->b:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    .line 55
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->b:Lcom/samsung/android/sdk/bixby2/state/StateHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/content/Context;)Lcom/samsung/android/sdk/bixby2/AppMetaInfo;
    .locals 4

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 90
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v3, "com.samsung.android.bixby.capsuleId"

    .line 92
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.android.bixby.capsuleId"

    .line 93
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 99
    new-instance v0, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get Capsule ID from Meta data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 101
    sget-object v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get Meta data info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    sget-object p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v0, "StateHandler.Callback instance is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;->onAppStateRequested()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    sget-object p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v0, "state info is empty."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;->onCapsuleIdRequested()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby2/Sbixby;->d()Ljava/util/Map;

    move-result-object v3

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    sget-object v2, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v4, "capsuleId is empty"

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    if-eqz v3, :cond_2

    .line 128
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 134
    sget-object v2, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v4, "Map for App Meta Info. has only one"

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    goto :goto_1

    .line 139
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v0, "No Capsule Id and multiple App Meta Info. Can\'t pick one"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 130
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->b(Landroid/content/Context;)Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    move-result-object v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 145
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    goto :goto_1

    .line 148
    :cond_6
    sget-object v3, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v4, "Map for App Meta Info. is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->b(Landroid/content/Context;)Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->a(Ljava/lang/String;)V

    :cond_7
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_8

    .line 162
    sget-object p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    const-string v0, "App Meta Info. is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 168
    :cond_8
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "capsuleId"

    .line 169
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appId"

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "appVersionCode"

    .line 171
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->b()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    sget-object p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 175
    sget-object v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;)V
    .locals 3

    .line 79
    sget-object v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state handler updated. callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->c:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    return-void
.end method
