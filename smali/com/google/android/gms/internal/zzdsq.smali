.class public final enum Lcom/google/android/gms/internal/zzdsq;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzfga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzdsq;",
        ">;",
        "Lcom/google/android/gms/internal/zzfga;"
    }
.end annotation


# static fields
.field private static final zzbcl:Lcom/google/android/gms/internal/zzfgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgb<",
            "Lcom/google/android/gms/internal/zzdsq;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzlvn:Lcom/google/android/gms/internal/zzdsq;

.field public static final enum zzlvo:Lcom/google/android/gms/internal/zzdsq;

.field private static enum zzlvp:Lcom/google/android/gms/internal/zzdsq;

.field public static final enum zzlvq:Lcom/google/android/gms/internal/zzdsq;

.field public static final enum zzlvr:Lcom/google/android/gms/internal/zzdsq;

.field public static final enum zzlvs:Lcom/google/android/gms/internal/zzdsq;

.field private static final synthetic zzlvt:[Lcom/google/android/gms/internal/zzdsq;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvn:Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "SHA1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvo:Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "SHA224"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvp:Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "SHA256"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvq:Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "SHA512"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvr:Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsq;

    const-string v1, "UNRECOGNIZED"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/gms/internal/zzdsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvs:Lcom/google/android/gms/internal/zzdsq;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdsq;

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvn:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvo:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvp:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvq:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvr:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/zzdsq;->zzlvs:Lcom/google/android/gms/internal/zzdsq;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvt:[Lcom/google/android/gms/internal/zzdsq;

    new-instance v0, Lcom/google/android/gms/internal/zzdsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsq;->zzbcl:Lcom/google/android/gms/internal/zzfgb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/zzdsq;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzdsq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvt:[Lcom/google/android/gms/internal/zzdsq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzdsq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzdsq;

    return-object v0
.end method

.method public static zzfr(I)Lcom/google/android/gms/internal/zzdsq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/zzdsq;->zzlvr:Lcom/google/android/gms/internal/zzdsq;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdsq;->zzlvq:Lcom/google/android/gms/internal/zzdsq;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/zzdsq;->zzlvp:Lcom/google/android/gms/internal/zzdsq;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/zzdsq;->zzlvo:Lcom/google/android/gms/internal/zzdsq;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/zzdsq;->zzlvn:Lcom/google/android/gms/internal/zzdsq;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzhq()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvs:Lcom/google/android/gms/internal/zzdsq;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdsq;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
