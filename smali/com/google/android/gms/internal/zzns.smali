.class public final Lcom/google/android/gms/internal/zzns;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/zzns;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzns;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzns;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzns;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzns;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzns;->c:Lcom/google/android/gms/internal/zzns;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzns;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzns;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->c:Lcom/google/android/gms/internal/zzns;

    return-object v0
.end method
