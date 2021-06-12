.class final Lcom/google/android/gms/internal/zzaao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzalk<",
        "Lcom/google/android/gms/internal/zzaat;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzabb;

.field private synthetic b:Lcom/google/android/gms/internal/zzaan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaan;Lcom/google/android/gms/internal/zzabb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaao;->b:Lcom/google/android/gms/internal/zzaan;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaao;->a:Lcom/google/android/gms/internal/zzabb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzaat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaao;->b:Lcom/google/android/gms/internal/zzaan;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaao;->a:Lcom/google/android/gms/internal/zzabb;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaan;->a(Lcom/google/android/gms/internal/zzabb;Lcom/google/android/gms/internal/zzaat;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaao;->b:Lcom/google/android/gms/internal/zzaan;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaan;->f_()V

    :cond_0
    return-void
.end method
