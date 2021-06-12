.class public Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Sppmt"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    .line 63
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 80
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 97
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 105
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 109
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    const-string p2, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 66
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 125
    monitor-exit p0

    return-object p2

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 133
    monitor-exit p0

    return-object p2

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 141
    monitor-exit p0

    return-object p2

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 117
    monitor-exit p0

    return-object p2

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 149
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 147
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized A()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ciso"

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized B()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "last_fc_reg"

    const-wide/16 v1, 0x0

    .line 354
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_uri"

    const-string v1, ""

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_cumulative_data"

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chan_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "bAgreementDate"

    .line 326
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 325
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    .line 247
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ids_updated"

    .line 283
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_updated_data"

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 217
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "last_fc_reg"

    .line 351
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 350
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    .line 253
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 252
    monitor-exit p0

    throw p1
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "isFirstInit"

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_enabled"

    const/4 v1, 0x0

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_dereg"

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ppmtid"

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 264
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_state"

    .line 304
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 303
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()[J
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_pattern"

    const-string v1, ""

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 182
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 184
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 185
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 187
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 189
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 178
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_fc_reg"

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "dType"

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 270
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_send_done"

    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_enabled"

    const/4 v1, 0x0

    .line 196
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "noti_color"

    const/4 v1, 0x0

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 344
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chan_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_cumulative_data"

    const/4 v1, 0x0

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_cumulative_data"

    .line 214
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 213
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_updated_data"

    const/4 v1, 0x0

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_updated_data"

    .line 224
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 223
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_dereg"

    const/4 v1, 0x0

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_count_dereg"

    .line 234
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 233
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_fc_reg"

    const/4 v1, 0x0

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "retry_fc_reg"

    .line 242
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 241
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "aid"

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ppmtid"

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "dType"

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "uid"

    const-string v1, ""

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ids_updated"

    const/4 v1, 0x0

    .line 286
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()Z
    .locals 2

    const-string v0, "isFirstInit"

    const/4 v1, 0x1

    .line 293
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    const-string v0, "tncAgreed"

    const/4 v1, 0x0

    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized w()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_state"

    const/4 v1, 0x0

    .line 307
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_send_done"

    const/4 v1, 0x0

    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized y()V
    .locals 2

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->c(Z)V

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 317
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized z()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "bAgreementDate"

    const-string v1, ""

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
