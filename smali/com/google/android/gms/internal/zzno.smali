.class public abstract Lcom/google/android/gms/internal/zzno;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/zzno;
    .annotation runtime Lcom/google/android/gms/internal/zzzv;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/zzno;
    .annotation runtime Lcom/google/android/gms/internal/zzzv;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/zzno;
    .annotation runtime Lcom/google/android/gms/internal/zzzv;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zznp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzno;->a:Lcom/google/android/gms/internal/zzno;

    new-instance v0, Lcom/google/android/gms/internal/zznq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzno;->b:Lcom/google/android/gms/internal/zzno;

    new-instance v0, Lcom/google/android/gms/internal/zznr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzno;->c:Lcom/google/android/gms/internal/zzno;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
