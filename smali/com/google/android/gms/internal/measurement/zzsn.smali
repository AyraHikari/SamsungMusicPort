.class final synthetic Lcom/google/android/gms/internal/measurement/zzsn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzsl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsn;->a:Lcom/google/android/gms/internal/measurement/zzsl;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsn;->a:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
