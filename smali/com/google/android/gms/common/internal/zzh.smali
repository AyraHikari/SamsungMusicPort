.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh;->a:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zzh;->d:Z

    const/16 p1, 0x81

    .line 5
    iput p1, p0, Lcom/google/android/gms/common/internal/zzh;->c:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/common/internal/zzh;->c:I

    return v0
.end method
