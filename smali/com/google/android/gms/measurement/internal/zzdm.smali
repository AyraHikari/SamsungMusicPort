.class final Lcom/google/android/gms/measurement/internal/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/MainThread;
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzcs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/internal/zzct;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdm;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzco;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gs"

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    :goto_0
    if-eqz v2, :cond_1

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    const-string v4, "_cmp"

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "referrer"

    .line 16
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "gclid"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string v1, "utm_campaign"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_source"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_medium"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_term"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_content"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v3, "Activity created with referrer"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    const-string v3, "auto"

    const-string v4, "_ldl"

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->b(Landroid/app/Activity;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;J)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Landroid/app/Activity;)V

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;J)V

    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdo;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
