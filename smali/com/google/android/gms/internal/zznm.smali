.class public final Lcom/google/android/gms/internal/zznm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zznj;)Lcom/google/android/gms/internal/zznk;
    .locals 4
    .param p0    # Lcom/google/android/gms/internal/zznj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zznk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj;->e()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/zznk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context can\'t be null. Please set up context in CsiConfiguration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
