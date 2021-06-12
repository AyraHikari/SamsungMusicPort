.class public final Lcom/google/android/gms/internal/zzale;
.super Lcom/google/android/gms/internal/zzalf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzalf<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzale;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/zzale<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzale;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzale;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzale;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    return-void
.end method
