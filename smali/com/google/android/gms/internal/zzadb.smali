.class public final Lcom/google/android/gms/internal/zzadb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzacf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/zztp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztp<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/zztp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztp<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->r()Lcom/google/android/gms/internal/zztq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzakd;->a()Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/internal/zztx;

    move-result-object v0

    const-string v1, "google.afma.request.getAdDictionary"

    sget-object v2, Lcom/google/android/gms/internal/zztu;->a:Lcom/google/android/gms/internal/zztt;

    sget-object v3, Lcom/google/android/gms/internal/zztu;->a:Lcom/google/android/gms/internal/zztt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zztx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zztp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadb;->a:Lcom/google/android/gms/internal/zztp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->r()Lcom/google/android/gms/internal/zztq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzakd;->a()Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/internal/zztx;

    move-result-object p1

    const-string v0, "google.afma.sdkConstants.getSdkConstants"

    sget-object v1, Lcom/google/android/gms/internal/zztu;->a:Lcom/google/android/gms/internal/zztt;

    sget-object v2, Lcom/google/android/gms/internal/zztu;->a:Lcom/google/android/gms/internal/zztt;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zztx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zztp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadb;->b:Lcom/google/android/gms/internal/zztp;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zztp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zztp<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadb;->a:Lcom/google/android/gms/internal/zztp;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zztp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zztp<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadb;->b:Lcom/google/android/gms/internal/zztp;

    return-object v0
.end method
