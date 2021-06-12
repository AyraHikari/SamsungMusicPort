.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XorOutputStream"
.end annotation


# instance fields
.field private final mKey:B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    iput-byte p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->mKey:B

    return-void
.end method

.method private xor(I)B
    .locals 1

    .line 152
    iget-byte v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->mKey:B

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 163
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    .line 171
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->xor(I)B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
