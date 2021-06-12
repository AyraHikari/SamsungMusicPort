.class public final Lcom/google/android/gms/internal/zzaoz;
.super Landroid/content/MutableContextWrapper;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaoz;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->b:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoz;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaoz;->b:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoz;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
