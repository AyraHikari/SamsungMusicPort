.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XorInputStream"
.end annotation


# instance fields
.field private final mKey:B


# direct methods
.method constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    iput-byte p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;->mKey:B

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    iget-byte v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;->mKey:B

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gtz p3, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 137
    aget-byte v2, p1, v1

    iget-byte v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureXor$XorInputStream;->mKey:B

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method
