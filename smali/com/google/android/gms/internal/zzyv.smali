.class final Lcom/google/android/gms/internal/zzyv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzann;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzanh;

.field private synthetic b:Lcom/google/android/gms/internal/zzyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyu;Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyv;->b:Lcom/google/android/gms/internal/zzyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyv;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzanh;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzyv;->a:Lcom/google/android/gms/internal/zzanh;

    const-string v0, "google.afma.nativeAds.renderVideo"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyv;->b:Lcom/google/android/gms/internal/zzyu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzyu;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
