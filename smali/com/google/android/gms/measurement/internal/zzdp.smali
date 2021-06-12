.class final Lcom/google/android/gms/measurement/internal/zzdp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzdn;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzdn;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/zzdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdo;ZLcom/google/android/gms/measurement/internal/zzdn;Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdo;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdo;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdo;Lcom/google/android/gms/measurement/internal/zzdn;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "_pn"

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "_pc"

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_pi"

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdp;->b:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    .line 16
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdo;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdp;->d:Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdp;->c:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdn;)V

    return-void
.end method
