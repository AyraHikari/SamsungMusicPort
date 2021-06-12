.class public Lcom/google/android/gms/internal/zzahy;
.super Lcom/google/android/gms/internal/zzahw;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzahw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/zzanh;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaor;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaor;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
