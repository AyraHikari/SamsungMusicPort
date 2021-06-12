.class final Lcom/google/android/gms/internal/zzdm$zza;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzdm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdm$zza;->a:Lcom/google/android/gms/internal/zzdm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdm;Lcom/google/android/gms/internal/zzdn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdm$zza;-><init>(Lcom/google/android/gms/internal/zzdm;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdm$zza;->a:Lcom/google/android/gms/internal/zzdm;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdm;->a(Lcom/google/android/gms/internal/zzdm;Z)Z

    return-void

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdm$zza;->a:Lcom/google/android/gms/internal/zzdm;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdm;->a(Lcom/google/android/gms/internal/zzdm;Z)Z

    :cond_1
    return-void
.end method
