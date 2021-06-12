.class final Lcom/google/android/gms/internal/zzaet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/google/android/gms/internal/zzaes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaes;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaet;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaet;->a:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaes;->a(Lcom/google/android/gms/internal/zzaes;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaes;->b(Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzfkd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzfkd;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/zzfjw;->g:Lcom/google/android/gms/internal/zzfkd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaes;->b(Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfjw;->g:Lcom/google/android/gms/internal/zzfkd;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzfkd;->c:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaes;->b(Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfjw;->g:Lcom/google/android/gms/internal/zzfkd;

    const-string v2, "image/png"

    iput-object v2, v0, Lcom/google/android/gms/internal/zzfkd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaet;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaes;->b(Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfjw;->g:Lcom/google/android/gms/internal/zzfkd;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzfkd;->a:Ljava/lang/Integer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
