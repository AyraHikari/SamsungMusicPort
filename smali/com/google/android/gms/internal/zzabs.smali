.class final Lcom/google/android/gms/internal/zzabs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzali;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzabq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabs;->a:Lcom/google/android/gms/internal/zzabq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzabo;->e()Lcom/google/android/gms/ads/internal/gmsg/zzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabs;->a:Lcom/google/android/gms/internal/zzabq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/zzy;->b(Ljava/lang/String;)V

    return-void
.end method
