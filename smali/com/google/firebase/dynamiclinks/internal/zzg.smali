.class public final Lcom/google/firebase/dynamiclinks/internal/zzg;
.super Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V
    .locals 0
    .param p2    # Lcom/google/firebase/analytics/connector/AnalyticsConnector;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzg;->a:Lcom/google/android/gms/common/api/GoogleApi;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzg;->b:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez p2, :cond_0

    const-string p1, "FDL"

    const-string p2, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events."

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V
    .locals 1
    .param p2    # Lcom/google/firebase/analytics/connector/AnalyticsConnector;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzc;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/internal/zzc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/zzg;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V

    return-void
.end method

.method public static b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "dynamicLink"

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "domainUriPrefix"

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "FDL domain is missing. Set with setDomainUriPrefix() or setDynamicLinkDomain()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/firebase/dynamiclinks/internal/zzg;->b(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzg;->a:Lcom/google/android/gms/common/api/GoogleApi;

    new-instance v1, Lcom/google/firebase/dynamiclinks/internal/zzj;

    invoke-direct {v1, p1}, Lcom/google/firebase/dynamiclinks/internal/zzj;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->a(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1

    .line 20
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;-><init>(Lcom/google/firebase/dynamiclinks/internal/zzg;)V

    return-object v0
.end method
