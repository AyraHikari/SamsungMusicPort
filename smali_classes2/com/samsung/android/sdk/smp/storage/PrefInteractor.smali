.class public Lcom/samsung/android/sdk/smp/storage/PrefInteractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/android/sdk/smp/storage/PrefInteractor;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmpPref"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/PrefInteractor;
    .locals 2

    .line 18
    sget-object v0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a:Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a:Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a:Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->a:Lcom/samsung/android/sdk/smp/storage/PrefInteractor;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 51
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 29
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 36
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 65
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 63
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 72
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 70
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 79
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 77
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 58
    monitor-exit p0

    return-object p2

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/storage/PrefInteractor;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1
.end method
