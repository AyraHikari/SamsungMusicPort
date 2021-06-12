.class final Lcom/google/android/gms/internal/zzyo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzon;

.field private synthetic b:Lcom/google/android/gms/internal/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzon;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyo;->b:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyo;->a:Lcom/google/android/gms/internal/zzon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzyo;->b:Lcom/google/android/gms/internal/zzym;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo;->a:Lcom/google/android/gms/internal/zzon;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/zzym;->a(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzqm;Ljava/lang/String;)V

    return-void
.end method
