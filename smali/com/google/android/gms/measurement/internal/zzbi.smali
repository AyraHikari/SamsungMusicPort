.class final Lcom/google/android/gms/measurement/internal/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/zzu;

.field private final synthetic b:Landroid/content/ServiceConnection;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/internal/measurement/zzu;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbi;->c:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbi;->a:Lcom/google/android/gms/internal/measurement/zzu;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbi;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbi;->c:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbh;->a:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbi;->c:Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbh;->a(Lcom/google/android/gms/measurement/internal/zzbh;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbi;->a:Lcom/google/android/gms/internal/measurement/zzu;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbi;->b:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzu;)Landroid/os/Bundle;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    if-eqz v1, :cond_9

    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v4, 0x0

    .line 8
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v2, "install_referrer"

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_2

    .line 19
    :cond_1
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v10

    const-string v11, "InstallReferrer API result"

    invoke-virtual {v10, v11, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 21
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v10

    const-string v11, "?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "No campaign params defined in install referrer result"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v10, "medium"

    .line 25
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, "(not set)"

    .line 27
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "organic"

    .line 28
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_6

    const-string v10, "referrer_click_timestamp_seconds"

    .line 30
    invoke-virtual {v1, v10, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long v10, v10, v8

    cmp-long v1, v10, v4

    if-nez v1, :cond_5

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "click_timestamp"

    .line 37
    invoke-virtual {v2, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->i:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-nez v1, :cond_7

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Campaign has already been logged"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 43
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->i:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 45
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v4, "Logging Install Referrer campaign from sdk with "

    const-string v5, "referrer API"

    .line 50
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_cis"

    const-string v4, "referrer API"

    .line 51
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v1

    const-string v4, "auto"

    const-string v5, "_cmp"

    .line 54
    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 17
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "No referrer defined in install referrer response"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    .line 56
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_a
    return-void
.end method
