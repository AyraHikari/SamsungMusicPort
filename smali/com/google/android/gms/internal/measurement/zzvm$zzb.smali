.class public final Lcom/google/android/gms/internal/measurement/zzvm$zzb;
.super Lcom/google/android/gms/internal/measurement/zzty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/measurement/zzty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzty;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zzb;->a:Lcom/google/android/gms/internal/measurement/zzvm;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzuo;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzvt;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zzb;->a:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzuo;Lcom/google/android/gms/internal/measurement/zzuz;)Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object p1

    return-object p1
.end method
