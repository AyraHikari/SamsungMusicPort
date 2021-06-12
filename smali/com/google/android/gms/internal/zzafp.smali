.class public final Lcom/google/android/gms/internal/zzafp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/zzaat;

.field public final b:Lcom/google/android/gms/internal/zzaax;

.field public final c:Lcom/google/android/gms/internal/zzui;

.field public final d:Lcom/google/android/gms/internal/zzjn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lcom/google/android/gms/internal/zzis;

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V
    .locals 0
    .param p12    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    iput p5, p0, Lcom/google/android/gms/internal/zzafp;->e:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafp;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafp;->g:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    if-eqz p12, :cond_0

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzafp;->j:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->a(Lcom/google/android/gms/internal/zzjj;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    iput p5, p0, Lcom/google/android/gms/internal/zzafp;->e:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafp;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafp;->g:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    new-instance p1, Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zznh;->cJ:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p1, p11, p2}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/internal/zzix;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzafp;->j:Z

    return-void
.end method
