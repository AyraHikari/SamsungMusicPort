.class public final Lcom/google/android/gms/internal/zzakd;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzakd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzake;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzake;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakd;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzakd;-><init>(IIZZZ)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6

    const v1, 0xb5bb70

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzakd;-><init>(IIZZZ)V

    return-void
.end method

.method private constructor <init>(IIZZZ)V
    .locals 9

    const-string p4, "afma-sdk-a-v"

    if-eqz p3, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzakd;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzakd;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/zzakd;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzakd;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzakd;->f:Z

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzakd;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzakd;

    const v1, 0xb5bc40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/zzakd;-><init>(IIZ)V

    return-object v0
.end method
