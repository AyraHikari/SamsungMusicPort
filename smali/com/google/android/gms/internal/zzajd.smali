.class public final Lcom/google/android/gms/internal/zzajd;
.super Lcom/google/android/gms/internal/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzr<",
        "Lcom/google/android/gms/internal/zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzalf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalf<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/zzajv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzalf<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzajd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzalf<",
            "Lcom/google/android/gms/internal/zzp;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/zzaje;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzaje;-><init>(Lcom/google/android/gms/internal/zzalf;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzx;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajd;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajd;->a:Lcom/google/android/gms/internal/zzalf;

    new-instance p3, Lcom/google/android/gms/internal/zzajv;

    invoke-direct {p3}, Lcom/google/android/gms/internal/zzajv;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajd;->c:Lcom/google/android/gms/internal/zzajv;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzajd;->c:Lcom/google/android/gms/internal/zzajv;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method
