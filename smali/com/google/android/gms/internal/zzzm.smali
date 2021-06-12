.class final Lcom/google/android/gms/internal/zzzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaki<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/ads/internal/gmsg/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzm;->b:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->b:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
