.class final Lcom/google/android/gms/internal/zzht;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/ByteArrayOutputStream;

.field private b:Landroid/util/Base64OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Landroid/util/Base64OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->b:Landroid/util/Base64OutputStream;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->b:Landroid/util/Base64OutputStream;

    invoke-virtual {v0, p1}, Landroid/util/Base64OutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->b:Landroid/util/Base64OutputStream;

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HashManager: Unable to convert to Base64."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->b:Landroid/util/Base64OutputStream;

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "HashManager: Unable to convert to Base64."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->b:Landroid/util/Base64OutputStream;

    throw v1
.end method
