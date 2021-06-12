.class public final Lcom/google/android/gms/internal/zzaod;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/zzaog;",
        ":",
        "Lcom/google/android/gms/internal/zzaow;",
        ":",
        "Lcom/google/android/gms/internal/zzaoy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzaof;

.field private final b:Lcom/google/android/gms/internal/zzaog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzaof;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/zzaof;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaod;->a:Lcom/google/android/gms/internal/zzaof;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaod;->b:Lcom/google/android/gms/internal/zzaog;

    return-void
.end method
