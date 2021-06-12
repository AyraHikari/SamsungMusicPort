.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->d:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    .line 239
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->f:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->b:[Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->c:[Ljava/lang/String;

    .line 241
    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->e:Z

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    .line 300
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    if-eqz v0, :cond_0

    .line 301
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->d:Z

    return-object p0

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    .line 261
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    if-eqz v0, :cond_1

    .line 263
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->b:[Ljava/lang/String;

    return-object p0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 3

    .line 251
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    if-eqz v0, :cond_1

    .line 253
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 254
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 255
    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp3/CipherSuite;->bj:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionSpec$Builder;->a([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 251
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 3

    .line 278
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    if-eqz v0, :cond_1

    .line 280
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 281
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 282
    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionSpec$Builder;->b([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 278
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lokhttp3/ConnectionSpec;
    .locals 1

    .line 306
    new-instance v0, Lokhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    .line 289
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    if-eqz v0, :cond_1

    .line 291
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->c:[Ljava/lang/String;

    return-object p0

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
