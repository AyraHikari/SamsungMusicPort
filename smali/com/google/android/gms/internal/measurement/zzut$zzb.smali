.class final Lcom/google/android/gms/internal/measurement/zzut$zzb;
.super Lcom/google/android/gms/internal/measurement/zzut$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field private final b:Ljava/nio/ByteBuffer;

.field private c:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzut$zza;-><init>([BII)V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzb;->b:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzb;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzb;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzb;->c:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzut$zza;->d()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
