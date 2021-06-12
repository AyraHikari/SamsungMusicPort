.class public Lcom/samsung/android/sdk/smp/data/UsageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "UsageManager"

.field private static b:Lcom/samsung/android/sdk/smp/data/UsageManager;


# instance fields
.field private c:I

.field private d:J

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/json/JSONArray;

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    return-void
.end method

.method public static a()Lcom/samsung/android/sdk/smp/data/UsageManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/samsung/android/sdk/smp/data/UsageManager;->b:Lcom/samsung/android/sdk/smp/data/UsageManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/sdk/smp/data/UsageManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->b:Lcom/samsung/android/sdk/smp/data/UsageManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/sdk/smp/data/UsageManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/data/UsageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->b:Lcom/samsung/android/sdk/smp/data/UsageManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/data/UsageManager;->b:Lcom/samsung/android/sdk/smp/data/UsageManager;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    .line 191
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->m()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->q()V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "app_start"

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "app_duration"

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "sessions"

    .line 152
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_2

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(J)Lorg/json/JSONArray;

    move-result-object v5

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(J)Lorg/json/JSONArray;

    move-result-object v6

    .line 161
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "dts"

    .line 162
    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "dur"

    .line 163
    invoke-virtual {v7, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "direct"

    .line 165
    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "indirect"

    .line 167
    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->l()V

    .line 178
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "session_count"

    const/16 v1, 0x19

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 180
    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->p()V

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_4
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 1

    .line 200
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->k()V

    const/4 v0, 0x3

    .line 203
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(I)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->o()V

    .line 205
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(I)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 10

    .line 56
    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->j(Landroid/content/Context;)V

    .line 59
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/samsung/android/sdk/smp/data/UsageManager;->a:Ljava/lang/String;

    const-string v2, "power save mode on"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->j()J

    move-result-wide v2

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->u()J

    move-result-wide v4

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    mul-long v4, v4, v8

    add-long/2addr v2, v4

    cmp-long p1, v6, v2

    if-ltz p1, :cond_0

    .line 66
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->h(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->i:Z

    if-eqz v2, :cond_0

    return-void

    .line 79
    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    if-nez v2, :cond_1

    .line 80
    new-instance v2, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 81
    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->d:J

    .line 82
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    .line 83
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->m()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->g:Z

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(I)V

    .line 86
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->g:Z

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 11

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->i:Z

    .line 95
    iget-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->i:Z

    if-eqz v3, :cond_1

    .line 96
    iget v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->h:I

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->h:I

    :cond_0
    return-void

    .line 101
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->g:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 104
    iget-object v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    check-cast v6, Ljava/lang/Long;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    iget v7, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->h:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    .line 106
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "dts"

    .line 107
    invoke-virtual {v8, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "dur"

    const/4 v10, 0x0

    sub-long v6, v0, v6

    .line 108
    invoke-virtual {v8, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "id"

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v6, 0x19

    if-lt p1, v6, :cond_3

    .line 113
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "sessions"

    .line 114
    iget-object v7, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "session_count"

    .line 115
    iget-object v7, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    new-instance v6, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v7, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v6, v7, p1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 118
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 123
    sget-object v3, Lcom/samsung/android/sdk/smp/data/UsageManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while handling session. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->h:I

    .line 128
    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->c:I

    if-gtz p1, :cond_7

    .line 129
    invoke-static {v2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 130
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "app_start"

    .line 131
    iget-wide v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->d:J

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "app_duration"

    .line 132
    iget-wide v6, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->d:J

    sub-long/2addr v0, v6

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "sessions"

    .line 134
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_count"

    .line 135
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 139
    invoke-static {v2}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 140
    invoke-static {v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->g(Landroid/content/Context;)V

    .line 143
    :cond_6
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->f:Lorg/json/JSONArray;

    .line 144
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 145
    iput-wide v4, p0, Lcom/samsung/android/sdk/smp/data/UsageManager;->d:J

    :cond_7
    return-void
.end method
