.class public final enum Lcom/google/android/gms/internal/zzdur;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdur;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzlze:Lcom/google/android/gms/internal/zzdur;

.field public static final enum zzlzf:Lcom/google/android/gms/internal/zzdur;

.field public static final enum zzlzg:Lcom/google/android/gms/internal/zzdur;

.field private static final synthetic zzlzh:[Lcom/google/android/gms/internal/zzdur;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzdur;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdur;->zzlze:Lcom/google/android/gms/internal/zzdur;

    new-instance v0, Lcom/google/android/gms/internal/zzdur;

    const-string v1, "NIST_P384"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzdur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzf:Lcom/google/android/gms/internal/zzdur;

    new-instance v0, Lcom/google/android/gms/internal/zzdur;

    const-string v1, "NIST_P521"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzdur;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzg:Lcom/google/android/gms/internal/zzdur;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdur;

    sget-object v1, Lcom/google/android/gms/internal/zzdur;->zzlze:Lcom/google/android/gms/internal/zzdur;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzdur;->zzlzf:Lcom/google/android/gms/internal/zzdur;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzdur;->zzlzg:Lcom/google/android/gms/internal/zzdur;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzh:[Lcom/google/android/gms/internal/zzdur;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdur;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzh:[Lcom/google/android/gms/internal/zzdur;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdur;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdur;

    return-object v0
.end method
