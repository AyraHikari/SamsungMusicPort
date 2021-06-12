.class public Lcom/samsung/android/sdk/ppmt/data/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DataManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xa580549

    if-eq v0, v1, :cond_3

    const v1, 0x307b3cfc    # 9.139993E-10f

    if-eq v0, v1, :cond_2

    const v1, 0x3adb2077

    if-eq v0, v1, :cond_1

    const v1, 0x782e1c05

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "send_updated_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "send_collected_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "send_dereg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "send_force_reg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 254
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->m()V

    .line 255
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_2

    .line 250
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->k()V

    .line 251
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_2

    .line 246
    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->g()V

    .line 247
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_2

    .line 242
    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->i()V

    .line 243
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 54
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string v1, "fail to check tracking data. db null"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 2

    .line 150
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 152
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to upsert dau. db null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "start"

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;Ljava/lang/String;)J

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->k()J

    move-result-wide p1

    const-wide/16 v0, 0x1e

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 161
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p2, "oldest DAU will be deleted"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->l()V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    .line 34
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to add tracking data. db null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 39
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(Ljava/lang/String;Ljava/lang/String;)J

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->v(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 44
    sget-object p2, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data will be deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->u(Ljava/lang/String;)V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0

    .line 28
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to add tracking data. type or data null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 2

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to add appusage. no data"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to add appusage. db null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 82
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p1, "app"

    .line 86
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->y(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string p1, "uc"

    .line 88
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 92
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p0, "uc"

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "save app usages"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "app"

    .line 102
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->y(Ljava/lang/String;)Z

    const-string p1, "app"

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(Ljava/lang/String;Ljava/lang/String;)J

    .line 105
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p2, "send app usages"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 110
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to add appusage. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to upsert custom data. data null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    .line 139
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string p1, "fail to upsert custom data. db null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v0, "cs"

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/util/Map;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 7

    .line 170
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 172
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "fail to upsert basic data. db null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 177
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->A()Ljava/lang/String;

    move-result-object v4

    .line 181
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "mcc"

    if-nez v2, :cond_1

    const-string v2, ""

    .line 182
    :cond_1
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nmcc"

    if-nez v3, :cond_2

    const-string v3, ""

    .line 183
    :cond_2
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cc"

    if-nez v4, :cond_3

    const-string v4, ""

    .line 184
    :cond_3
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mnc"

    .line 185
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nmnc"

    .line 186
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pf"

    .line 187
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osv"

    .line 188
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "md"

    .line 189
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appv"

    .line 190
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sdkv"

    .line 191
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bs"

    .line 193
    invoke-virtual {v0, v5, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    :catch_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    .line 202
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "fail to check reg data. db null."

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g()J

    move-result-wide v2

    const-string v4, "start"

    .line 209
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 210
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_1

    .line 212
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .line 216
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "fail to delete all. db null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->y()V

    .line 225
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->e(Landroid/content/Context;)V

    .line 226
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->m()V

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    .line 233
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 234
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 235
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 236
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    return-void
.end method
