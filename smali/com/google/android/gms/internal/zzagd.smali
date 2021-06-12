.class public final Lcom/google/android/gms/internal/zzagd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzajv;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->b()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzage;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzagb;->g_()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzakv;

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzakj;->a(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
