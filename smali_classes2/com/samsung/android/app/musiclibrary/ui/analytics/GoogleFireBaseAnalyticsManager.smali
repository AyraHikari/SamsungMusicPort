.class public Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    return-object p0
.end method

.method private b()Z
    .locals 1

    .line 185
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->q_:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KOREA"

    .line 55
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "korea"

    goto :goto_0

    :cond_1
    const-string v0, "global"

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Z)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "csc"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a()V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1, p2, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "spotify"

    const-string v1, "click"

    .line 177
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a()V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a()V

    .line 168
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a()V

    .line 145
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
