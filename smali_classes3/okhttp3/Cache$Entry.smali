.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lokhttp3/Headers;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/Protocol;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lokhttp3/Headers;

.field private final j:Lokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final k:J

.field private final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->c()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->a:Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->c()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lokhttp3/Response;)V
    .locals 2

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    .line 596
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->c(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    .line 597
    invoke-virtual {p1}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->e:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Lokhttp3/Response;->b()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->f:Lokhttp3/Protocol;

    .line 599
    invoke-virtual {p1}, Lokhttp3/Response;->c()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->g:I

    .line 600
    invoke-virtual {p1}, Lokhttp3/Response;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->h:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    .line 602
    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    .line 603
    invoke-virtual {p1}, Lokhttp3/Response;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->k:J

    .line 604
    invoke-virtual {p1}, Lokhttp3/Response;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->l:J

    return-void
.end method

.method constructor <init>(Lokio/Source;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    :try_start_0
    invoke-static {p1}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    .line 544
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->e:Ljava/lang/String;

    .line 545
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 546
    invoke-static {v0}, Lokhttp3/Cache;->a(Lokio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 548
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    .line 552
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/StatusLine;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 553
    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->a:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$Entry;->f:Lokhttp3/Protocol;

    .line 554
    iget v2, v1, Lokhttp3/internal/http/StatusLine;->b:I

    iput v2, p0, Lokhttp3/Cache$Entry;->g:I

    .line 555
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$Entry;->h:Ljava/lang/String;

    .line 556
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 557
    invoke-static {v0}, Lokhttp3/Cache;->a(Lokio/BufferedSource;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 559
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    :cond_1
    sget-object v2, Lokhttp3/Cache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    sget-object v3, Lokhttp3/Cache$Entry;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    sget-object v4, Lokhttp3/Cache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 564
    sget-object v4, Lokhttp3/Cache$Entry;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 566
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 567
    :goto_2
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->k:J

    if-eqz v3, :cond_3

    .line 569
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 570
    :cond_3
    iput-wide v4, p0, Lokhttp3/Cache$Entry;->l:J

    .line 571
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    .line 573
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 574
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 578
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v1}, Lokhttp3/CipherSuite;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    .line 580
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->a(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 581
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->a(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 582
    invoke-interface {v0}, Lokio/BufferedSource;->f()Z

    move-result v4

    if-nez v4, :cond_4

    .line 583
    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_3

    .line 584
    :cond_4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 585
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lokhttp3/Handshake;->a(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    goto :goto_4

    .line 576
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :goto_4
    invoke-interface {p1}, Lokio/Source;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lokio/Source;->close()V

    throw v0
.end method

.method private a(Lokio/BufferedSource;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-static {p1}, Lokhttp3/Cache;->a(Lokio/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 662
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 665
    invoke-interface {p1}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v4

    .line 666
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 667
    invoke-static {v4}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    .line 668
    invoke-virtual {v5}, Lokio/Buffer;->g()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 672
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lokio/BufferedSink;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->m(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 680
    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    const/4 v0, 0x0

    .line 681
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 682
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 683
    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-interface {p1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 685
    invoke-interface {v3, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 688
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a()Z
    .locals 2

    .line 654
    iget-object v0, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 5

    .line 699
    iget-object v0, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    .line 702
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->e:Ljava/lang/String;

    const/4 v4, 0x0

    .line 703
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    .line 704
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v2

    .line 706
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 707
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->f:Lokhttp3/Protocol;

    .line 708
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lokhttp3/Cache$Entry;->g:I

    .line 709
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(I)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->h:Ljava/lang/String;

    .line 710
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    .line 711
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    .line 713
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->a(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->k:J

    .line 714
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->a(J)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->l:J

    .line 715
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->b(J)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->a(I)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 610
    iget-object v1, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    .line 611
    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 612
    iget-object v1, p0, Lokhttp3/Cache$Entry;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    .line 613
    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 614
    iget-object v1, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokio/BufferedSink;->m(J)Lokio/BufferedSink;

    move-result-object v1

    .line 615
    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 616
    iget-object v1, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 617
    iget-object v4, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 618
    invoke-interface {v4, v5}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    .line 619
    invoke-virtual {v5, v3}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 620
    invoke-interface {v4, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_0
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lokhttp3/Cache$Entry;->f:Lokhttp3/Protocol;

    iget v4, p0, Lokhttp3/Cache$Entry;->g:I

    iget-object v5, p0, Lokhttp3/Cache$Entry;->h:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    .line 624
    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 625
    iget-object v1, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokio/BufferedSink;->m(J)Lokio/BufferedSink;

    move-result-object v1

    .line 626
    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 627
    iget-object v1, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 628
    iget-object v3, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    invoke-virtual {v3, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    .line 629
    invoke-interface {v3, v4}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/Cache$Entry;->i:Lokhttp3/Headers;

    .line 630
    invoke-virtual {v4, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 631
    invoke-interface {v3, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 633
    :cond_1
    sget-object v0, Lokhttp3/Cache$Entry;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, ": "

    .line 634
    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$Entry;->k:J

    .line 635
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->m(J)Lokio/BufferedSink;

    move-result-object v0

    .line 636
    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 637
    sget-object v0, Lokhttp3/Cache$Entry;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, ": "

    .line 638
    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$Entry;->l:J

    .line 639
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->m(J)Lokio/BufferedSink;

    move-result-object v0

    .line 640
    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 642
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    invoke-interface {p1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 644
    iget-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->b()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 645
    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 646
    iget-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->a(Lokio/BufferedSink;Ljava/util/List;)V

    .line 647
    iget-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->a(Lokio/BufferedSink;Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lokhttp3/Cache$Entry;->j:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 650
    :cond_2
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void
.end method

.method public a(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2

    .line 693
    iget-object v0, p0, Lokhttp3/Cache$Entry;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Cache$Entry;->e:Ljava/lang/String;

    .line 694
    invoke-virtual {p1}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Cache$Entry;->d:Lokhttp3/Headers;

    .line 695
    invoke-static {p2, v0, p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
