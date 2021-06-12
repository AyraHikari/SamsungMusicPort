.class final Lcom/google/android/gms/internal/zzaak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaam;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzakd;)Z
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajr;->c(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zznh;->cK:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzakd;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaak;->a:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzakd;->e:Z

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/zzaaj;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzi;->zzcu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/zznh;->D:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v2
.end method
