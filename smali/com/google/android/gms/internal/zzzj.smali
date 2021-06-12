.class final synthetic Lcom/google/android/gms/internal/zzzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzzf;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzj;->a:Lcom/google/android/gms/internal/zzzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzj;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzj;->a:Lcom/google/android/gms/internal/zzzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzj;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzzf;->a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method
