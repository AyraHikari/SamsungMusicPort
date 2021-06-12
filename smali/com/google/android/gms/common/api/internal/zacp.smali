.class public final Lcom/google/android/gms/common/api/internal/zacp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final b:[Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The connection to Google Play services was lost"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacp;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacp;->b:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method
