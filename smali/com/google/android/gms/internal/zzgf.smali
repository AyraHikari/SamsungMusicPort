.class public final Lcom/google/android/gms/internal/zzgf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzft;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private d:Lcom/google/android/gms/ads/internal/js/zzaa;

.field private e:Z

.field private final f:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/ads/internal/js/zzn;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzgk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgk;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->f:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgl;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgm;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->h:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgn;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->i:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf;->a:Lcom/google/android/gms/internal/zzft;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgf;->b:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/zzz;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzgf;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/google/android/gms/ads/internal/gmsg/zzz;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf;->c:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/js/zzn;->b(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf;->d:Lcom/google/android/gms/ads/internal/js/zzaa;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgf;->d:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance p2, Lcom/google/android/gms/internal/zzgg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzgg;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    new-instance p3, Lcom/google/android/gms/internal/zzgh;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/zzgh;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzall;->a(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    const-string p1, "Core JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgf;->a:Lcom/google/android/gms/internal/zzft;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzft;->a:Lcom/google/android/gms/internal/zzfr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfr;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

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

.method static synthetic a(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/internal/zzft;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzgf;->a:Lcom/google/android/gms/internal/zzft;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzgf;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgf;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/ads/internal/gmsg/zzz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzgf;->c:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/js/zzaj;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->f:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->h:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->i:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgf;->d:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance v0, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/internal/zzgf;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzall;->a(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgf;->e:Z

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->d:Lcom/google/android/gms/ads/internal/js/zzaa;

    new-instance v1, Lcom/google/android/gms/internal/zzgj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgj;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzalj;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->a(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->d:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzaa;->a()V

    return-void
.end method

.method final b(Lcom/google/android/gms/ads/internal/js/zzaj;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->h:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->f:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->i:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method
