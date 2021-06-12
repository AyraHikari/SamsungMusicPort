.class public abstract Lcom/google/android/gms/internal/zzyk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/zzzb;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzzb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "-TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyk;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
