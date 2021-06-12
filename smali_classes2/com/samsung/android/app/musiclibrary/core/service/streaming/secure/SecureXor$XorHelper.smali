.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XorHelper"
.end annotation


# static fields
.field private static final INDEX_PRIVATE_KEY:I = 0x7

.field private static final INDEX_PRIVATE_KEY_SIZE:I = 0x10

.field private static final OPTIMIZED_BUFFER_SIZE:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrypt(Ljava/lang/String;Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 1

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;->generateKey([B)[B

    move-result-object p0

    const/4 v0, 0x7

    .line 96
    aget-byte p0, p0, v0

    .line 97
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;-><init>(Ljava/io/InputStream;B)V

    return-object v0
.end method

.method static encrypt(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorHelper;->generateKey([B)[B

    move-result-object p0

    const/4 v0, 0x7

    .line 83
    aget-byte p0, p0, v0

    .line 84
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;-><init>(Ljava/io/OutputStream;B)V

    const/4 p0, 0x0

    .line 85
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 p1, 0x20000

    .line 87
    :try_start_1
    new-array p1, p1, [B

    .line 88
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_1
    if-eqz v1, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_5
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p0

    .line 84
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz p0, :cond_2

    .line 91
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_4
    throw p1
.end method

.method private static generateKey([B)[B
    .locals 4

    const/16 v0, 0x10

    .line 101
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 104
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    goto :goto_1

    :cond_0
    int-to-byte v3, v2

    .line 106
    aput-byte v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
