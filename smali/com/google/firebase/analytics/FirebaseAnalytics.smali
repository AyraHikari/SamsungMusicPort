.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/zzbt;

.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object p0

    .line 7
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x28L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->i()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->i()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->i()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Z)V

    return-void
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 14
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->w()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
