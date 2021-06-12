.class public final Lcom/google/android/gms/internal/zztx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/js/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzty;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzty;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztx;->a:Lcom/google/android/gms/internal/zzaiq;

    new-instance v0, Lcom/google/android/gms/internal/zztz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztx;->b:Lcom/google/android/gms/internal/zzaiq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/ads/internal/js/zzn;

    sget-object v4, Lcom/google/android/gms/internal/zztx;->a:Lcom/google/android/gms/internal/zzaiq;

    sget-object v5, Lcom/google/android/gms/internal/zztx;->b:Lcom/google/android/gms/internal/zzaiq;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiq;Lcom/google/android/gms/internal/zzaiq;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/zztx;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zztp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzts<",
            "TI;>;",
            "Lcom/google/android/gms/internal/zztr<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/zztp<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzua;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztx;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzua;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)V

    return-object v0
.end method
