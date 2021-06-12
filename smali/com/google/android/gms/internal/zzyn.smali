.class final Lcom/google/android/gms/internal/zzyn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzalf;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzalf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyn;->c:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyn;->a:Lcom/google/android/gms/internal/zzalf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyn;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyn;->a:Lcom/google/android/gms/internal/zzalf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyn;->c:Lcom/google/android/gms/internal/zzym;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzym;->a(Lcom/google/android/gms/internal/zzym;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzba;->zzdu()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    return-void
.end method
