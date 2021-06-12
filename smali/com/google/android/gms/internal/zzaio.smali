.class final Lcom/google/android/gms/internal/zzaio;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzain;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzain;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaio;->a:Lcom/google/android/gms/internal/zzain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaio;->a:Lcom/google/android/gms/internal/zzain;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzain;->a:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
