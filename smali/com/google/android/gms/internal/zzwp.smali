.class final Lcom/google/android/gms/internal/zzwp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzwo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwp;->a:Lcom/google/android/gms/internal/zzwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzwp;->a:Lcom/google/android/gms/internal/zzwo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwo;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzwp;->a:Lcom/google/android/gms/internal/zzwo;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzwo;->a(Lcom/google/android/gms/internal/zzwo;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
