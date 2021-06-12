.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# static fields
.field private static final a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field private static final b:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;


# instance fields
.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

.field private e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field private f:Ljava/lang/String;

.field private g:Ljavax/net/ssl/HttpsURLConnection;

.field private h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

.field private i:Ljava/lang/Boolean;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 36
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    .line 59
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->c:Ljava/util/Queue;

    .line 60
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->f:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    const/4 p2, 0x1

    .line 62
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    .line 63
    invoke-direct {p0, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->j:I

    .line 64
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    .line 51
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 52
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->f:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    .line 54
    invoke-direct {p0, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->j:I

    .line 55
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method private a(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0xbb8

    return p1

    :cond_0
    const/16 v0, 0x3a98

    if-le p1, v0, :cond_1

    const/16 p1, 0x3a98

    :cond_1
    return p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const-string v0, "1000"

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 171
    :cond_1
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    :goto_0
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->c:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 173
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->c:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 174
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->h:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u000e"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 86
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    .line 88
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->e:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 89
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "tid"

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->f:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    .line 96
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    .line 97
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Encoding"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gzip"

    goto :goto_1

    :cond_1
    const-string v2, "text"

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->j:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->c()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 106
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 115
    :cond_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 119
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 121
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLS Client] Send to DLS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "[DLS Client] Send fail."

    .line 124
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->c(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLS Client] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public b()I
    .locals 6

    const/4 v0, 0x0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 136
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "rc"

    .line 138
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    const-string v3, "1000"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLS Sender] send result success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x7

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLS Sender] send result fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    .line 148
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string v1, "[DLS Client] Send fail."

    .line 151
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->c(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLS Client] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    const/16 v3, -0x29

    const/4 v0, 0x0

    const-string v1, ""

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(Ljava/io/BufferedReader;)V

    return v3

    :catchall_1
    move-exception v0

    :goto_3
    invoke-direct {p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->a(Ljava/io/BufferedReader;)V

    throw v0
.end method
