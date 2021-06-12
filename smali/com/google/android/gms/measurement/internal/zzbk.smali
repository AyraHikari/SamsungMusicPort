.class final Lcom/google/android/gms/measurement/internal/zzbk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzbt;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbj;Lcom/google/android/gms/measurement/internal/zzbt;Lcom/google/android/gms/measurement/internal/zzap;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbk;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbk;->b:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbk;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->f()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbk;->b:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbk;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->f()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->E()V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbg;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;->a(Ljava/lang/String;)V

    return-void
.end method
