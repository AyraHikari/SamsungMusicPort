.class final Lcom/google/android/gms/internal/zzaik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzaig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaik;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->n()Lcom/google/android/gms/internal/zzaim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaik;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaig;->d(Lcom/google/android/gms/internal/zzaig;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaik;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaig;->e(Lcom/google/android/gms/internal/zzaig;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaik;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaig;->f(Lcom/google/android/gms/internal/zzaig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
