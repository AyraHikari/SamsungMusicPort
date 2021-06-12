.class public final Lcom/google/android/gms/internal/zzgb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzft;

.field private final b:Lcom/google/android/gms/internal/zzanh;

.field private final c:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/internal/zzanh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzgc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgc;-><init>(Lcom/google/android/gms/internal/zzgb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->c:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgd;-><init>(Lcom/google/android/gms/internal/zzgb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->d:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzge;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzge;-><init>(Lcom/google/android/gms/internal/zzgb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->e:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb;->a:Lcom/google/android/gms/internal/zzft;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgb;->b:Lcom/google/android/gms/internal/zzanh;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgb;->b:Lcom/google/android/gms/internal/zzanh;

    const-string p2, "/updateActiveView"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->c:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string p2, "/untrackActiveViewUnit"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->d:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string p2, "/visibilityChanged"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->e:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string p1, "Custom JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgb;->a:Lcom/google/android/gms/internal/zzft;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzft;->a:Lcom/google/android/gms/internal/zzfr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfr;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzgb;)Lcom/google/android/gms/internal/zzft;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzgb;->a:Lcom/google/android/gms/internal/zzft;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgb;->b:Lcom/google/android/gms/internal/zzanh;

    const-string v0, "AFMA_updateActiveView"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgb;->a:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzft;->b(Lcom/google/android/gms/internal/zzgo;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->b:Lcom/google/android/gms/internal/zzanh;

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgb;->e:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgb;->d:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgb;->c:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method
