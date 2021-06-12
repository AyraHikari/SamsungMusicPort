.class public final enum Lcom/google/android/gms/internal/zzdus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzlzi:Lcom/google/android/gms/internal/zzdus;

.field public static final enum zzlzj:Lcom/google/android/gms/internal/zzdus;

.field private static final synthetic zzlzk:[Lcom/google/android/gms/internal/zzdus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzdus;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzi:Lcom/google/android/gms/internal/zzdus;

    new-instance v0, Lcom/google/android/gms/internal/zzdus;

    const-string v1, "COMPRESSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzdus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzj:Lcom/google/android/gms/internal/zzdus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdus;

    sget-object v1, Lcom/google/android/gms/internal/zzdus;->zzlzi:Lcom/google/android/gms/internal/zzdus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzdus;->zzlzj:Lcom/google/android/gms/internal/zzdus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzk:[Lcom/google/android/gms/internal/zzdus;

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

.method public static values()[Lcom/google/android/gms/internal/zzdus;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzk:[Lcom/google/android/gms/internal/zzdus;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdus;

    return-object v0
.end method
