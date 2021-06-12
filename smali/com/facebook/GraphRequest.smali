.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/facebook/GraphRequest$OnProgressCallback;,
        Lcom/facebook/GraphRequest$Callback;,
        Lcom/facebook/GraphRequest$Serializer;,
        Lcom/facebook/GraphRequest$KeyValueSerializer;,
        Lcom/facebook/GraphRequest$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field public static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final DEBUG_KEY:Ljava/lang/String; = "__debug__"

.field private static final DEBUG_MESSAGES_KEY:Ljava/lang/String; = "messages"

.field private static final DEBUG_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final DEBUG_MESSAGE_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DEBUG_MESSAGE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final DEBUG_SEVERITY_INFO:Ljava/lang/String; = "info"

.field private static final DEBUG_SEVERITY_WARNING:Ljava/lang/String; = "warning"

.field public static final FIELDS_PARAM:Ljava/lang/String; = "fields"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String;

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String; = "GraphRequest"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/GraphRequest$Callback;

.field private graphObject:Lorg/json/JSONObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private skipClientToken:Z

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0xb

    .line 154
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 156
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 258
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 259
    iput-object p2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 260
    iput-object p6, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    if-eqz p3, :cond_0

    .line 266
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    goto :goto_0

    .line 268
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 272
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 277
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 278
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    .line 280
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 282
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 3

    .line 1433
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1440
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-static {}, Lcom/facebook/FacebookSdk;->getClientToken()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    :cond_1
    sget-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1455
    :cond_3
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    .line 1461
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 1465
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1467
    iget-object p2, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 1468
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1469
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 1475
    :cond_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    invoke-static {v1}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 1479
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Unsupported parameter type for GET request: %s"

    .line 1480
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1491
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "User-Agent"

    .line 1424
    invoke-static {}, Lcom/facebook/GraphRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    .line 1425
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1427
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method public static executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;
    .locals 3

    const/4 v0, 0x1

    .line 1105
    new-array v1, v0, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1107
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1111
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/GraphResponse;

    return-object p0

    .line 1108
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "invalid state: expected a single response"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1165
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1170
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1180
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    invoke-static {v1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1173
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1172
    invoke-static {v2, v0, v3}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v1

    .line 1176
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1184
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    return-object v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1185
    throw p0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1146
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1128
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 2

    const-string v0, "requests"

    .line 1238
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1240
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Lcom/facebook/GraphRequestBatch;)V

    .line 1241
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .line 1220
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    .line 1201
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1282
    invoke-static {p0, p1}, Lcom/facebook/GraphResponse;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1284
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1286
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result p0

    .line 1287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 1295
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 1298
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    return-object v0

    .line 1288
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 1292
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Received %d responses while expecting %d"

    .line 1289
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1262
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    const-string v0, "connection"

    .line 1346
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 1349
    invoke-virtual {p2, p0}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1350
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 1321
    invoke-static {v0, p0, p1}, Lcom/facebook/GraphRequest;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private static getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;
    .locals 1

    .line 1983
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1987
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1988
    iget-object v0, v0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 1990
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1996
    :cond_2
    sget-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1997
    sget-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object p0

    .line 1999
    :cond_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .line 888
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "me/photos"

    :cond_0
    return-object p0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 4

    .line 1527
    sget-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1528
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 1531
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    .line 1959
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 7

    .line 1965
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s.%s"

    const/4 v1, 0x2

    .line 1966
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FBAndroidSDK"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "4.42.0"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 1969
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 1970
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1971
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    aput-object v6, v1, v4

    aput-object v0, v1, v5

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 1979
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z
    .locals 3

    .line 1619
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1620
    instance-of v1, v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v1, :cond_0

    return v2

    .line 1625
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1626
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z
    .locals 4

    .line 1646
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1647
    iget-object v1, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1648
    iget-object v3, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1649
    invoke-static {v2}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .locals 3

    .line 1809
    sget-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1810
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1812
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "me/"

    .line 1814
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/me/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    .line 2003
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    .line 2011
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 7

    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 610
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_7

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/custom_audience_third_party_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object p2

    .line 620
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_4

    if-eqz p2, :cond_3

    .line 631
    invoke-virtual {p2}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 632
    invoke-virtual {p2}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "udid"

    .line 635
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 624
    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "There is no access token and attribution identifiers could not be retrieved"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 641
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 642
    invoke-virtual {p2}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "limit_event_usage"

    const-string p2, "1"

    .line 643
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_6
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1

    .line 614
    :cond_7
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Facebook App ID cannot be determined"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 298
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 386
    new-instance v6, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
    .locals 6

    .line 312
    new-instance v5, Lcom/facebook/GraphRequest$1;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V

    .line 320
    new-instance p1, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 6

    .line 360
    new-instance v5, Lcom/facebook/GraphRequest$2;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 370
    new-instance p1, Lcom/facebook/GraphRequest;

    const-string v2, "me/friends"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 7

    if-nez p1, :cond_1

    .line 412
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Either location or searchText must be specified."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :cond_1
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "type"

    const-string v1, "place"

    .line 417
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit"

    .line 418
    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    const-string p3, "center"

    .line 420
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 424
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v4

    .line 421
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {v3, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "distance"

    .line 426
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    :cond_2
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "q"

    .line 429
    invoke-virtual {v3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_3
    new-instance v5, Lcom/facebook/GraphRequest$3;

    invoke-direct {v5, p5}, Lcom/facebook/GraphRequest$3;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 443
    new-instance p1, Lcom/facebook/GraphRequest;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 339
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 345
    invoke-virtual {v6, p2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    return-object v6
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6

    .line 466
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    .line 469
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string p1, "picture"

    .line 471
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p3, :cond_1

    .line 472
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "caption"

    .line 473
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_1
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 538
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    new-instance p1, Ljava/io/File;

    .line 543
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 540
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    .line 547
    :cond_0
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 551
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_1

    .line 553
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    const-string p1, "picture"

    .line 555
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p3, :cond_2

    .line 557
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "caption"

    .line 558
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_2
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1

    .line 548
    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The photo Uri must be either a file:// or content:// Uri"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 p1, 0x10000000

    .line 503
    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 504
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    .line 506
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string p2, "picture"

    .line 508
    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p3, :cond_1

    .line 509
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "caption"

    .line 510
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_1
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2016
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2017
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2018
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2020
    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 2021
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2023
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2025
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2019
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1832
    invoke-static {p1}, Lcom/facebook/GraphRequest;->isMeRequest(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ":"

    .line 1833
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "?"

    .line 1834
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1839
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1840
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1841
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1842
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string v5, "image"

    .line 1843
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1844
    :goto_2
    invoke-static {v3, v4, p2, v5}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1856
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1857
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 1861
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1862
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "%s[%s]"

    .line 1864
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1867
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1865
    invoke-static {v5, v1, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "id"

    .line 1874
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 1877
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1875
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto/16 :goto_3

    :cond_1
    const-string v0, "url"

    .line 1880
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "url"

    .line 1883
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1881
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "fbsdk:create_object"

    .line 1886
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1887
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_3

    .line 1890
    :cond_3
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1891
    check-cast p1, Lorg/json/JSONArray;

    .line 1892
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 1894
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s[%d]"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1895
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    invoke-static {v5, v6, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1897
    :cond_4
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_6

    const-class p3, Ljava/lang/Number;

    .line 1898
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_6

    const-class p3, Ljava/lang/Boolean;

    .line 1899
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    .line 1901
    :cond_5
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1902
    check-cast p1, Ljava/util/Date;

    .line 1909
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1912
    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1900
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :catch_0
    move-exception p0

    .line 1895
    throw p0
.end method

.method private static processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1761
    new-instance v0, Lcom/facebook/GraphRequest$Serializer;

    invoke-direct {v0, p4, p1, p5}, Lcom/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V

    const/4 p4, 0x1

    if-ne p2, p4, :cond_4

    const/4 p2, 0x0

    .line 1764
    invoke-virtual {p0, p2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 1766
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1767
    iget-object p4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 1768
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, p5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1769
    invoke-static {v1}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1770
    new-instance v2, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v2, p0, v1}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p4, "  Parameters:\n"

    .line 1775
    invoke-virtual {p1, p4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1777
    :cond_2
    iget-object p4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-static {p4, v0, p0}, Lcom/facebook/GraphRequest;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V

    if-eqz p1, :cond_3

    const-string p4, "  Attachments:\n"

    .line 1780
    invoke-virtual {p1, p4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1782
    :cond_3
    invoke-static {p2, v0}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1784
    iget-object p1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    .line 1785
    iget-object p0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    goto :goto_1

    .line 1788
    :cond_4
    invoke-static {p0}, Lcom/facebook/GraphRequest;->getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object p2

    .line 1789
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "batch_app_id"

    .line 1794
    invoke-virtual {v0, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1799
    invoke-static {v0, p0, p2}, Lcom/facebook/GraphRequest;->serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    if-eqz p1, :cond_5

    const-string p0, "  Attachments:\n"

    .line 1802
    invoke-virtual {p1, p0}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1804
    :cond_5
    invoke-static {p2, v0}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    :cond_6
    :goto_1
    return-void

    .line 1790
    :cond_7
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "App ID was not specified at the request or Settings."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .line 1378
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1384
    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1385
    iget-object v4, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v4, :cond_0

    .line 1386
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 1387
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1386
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1392
    new-instance p1, Lcom/facebook/GraphRequest$5;

    invoke-direct {p1, v1, p0}, Lcom/facebook/GraphRequest$5;-><init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    .line 1405
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1408
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1411
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1937
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1938
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest$Attachment;

    .line 1939
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/GraphRequest$Attachment;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1921
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1923
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1924
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1925
    invoke-static {v2}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1926
    invoke-virtual {p1, v1, v2, p2}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1950
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 1952
    invoke-direct {v2, v0, p2}, Lcom/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p2, "batch"

    .line 1955
    invoke-virtual {p0, p2, v0, p1}, Lcom/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1558
    iget-object v1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 1559
    iget-object v2, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "omit_response_on_success"

    .line 1560
    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1564
    :cond_0
    iget-object v1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "depends_on"

    .line 1565
    iget-object v2, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getRelativeUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_url"

    .line 1569
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "method"

    .line 1570
    iget-object v3, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1571
    iget-object v2, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v2, :cond_2

    .line 1572
    iget-object v2, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1573
    invoke-static {v2}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1577
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    iget-object v3, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1579
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1580
    iget-object v5, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1581
    invoke-static {v4}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1583
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1587
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1583
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1588
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v6, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v6, p0, v4}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1593
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ","

    .line 1594
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attached_files"

    .line 1595
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1598
    :cond_5
    iget-object p2, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz p2, :cond_6

    .line 1600
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    iget-object v2, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    new-instance v3, Lcom/facebook/GraphRequest$6;

    invoke-direct {v3, p0, p2}, Lcom/facebook/GraphRequest$6;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v2, v1, v3}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    const-string v1, "&"

    .line 1611
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "body"

    .line 1612
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1615
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1699
    new-instance v6, Lcom/facebook/internal/Logger;

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "Request"

    invoke-direct {v6, v0, v1}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v2

    .line 1702
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    .line 1705
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 1706
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1707
    invoke-static {p1, v5}, Lcom/facebook/GraphRequest;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1709
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    const-string v7, "Request:\n"

    .line 1710
    invoke-virtual {v6, v7}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    const-string v7, "Id"

    .line 1711
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "URL"

    .line 1712
    invoke-virtual {v6, v7, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "Method"

    .line 1713
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "User-Agent"

    const-string v8, "User-Agent"

    .line 1714
    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "Content-Type"

    const-string v8, "Content-Type"

    .line 1715
    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1717
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1718
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1722
    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v3, v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 1724
    invoke-virtual {v6}, Lcom/facebook/internal/Logger;->log()V

    return-void

    .line 1728
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 1732
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_3

    .line 1734
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 1737
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/facebook/GraphRequest;->hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1739
    new-instance v0, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    const/4 v8, 0x0

    move-object v7, p0

    move v9, v2

    move-object v10, v4

    move-object v11, v0

    move v12, v5

    .line 1740
    invoke-static/range {v7 .. v12}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1742
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v1

    .line 1743
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v10

    .line 1745
    new-instance v0, Lcom/facebook/ProgressOutputStream;

    int-to-long v11, v1

    move-object v7, v0

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V

    move-object p1, v0

    :cond_4
    move-object v0, p0

    move-object v1, v6

    move-object v3, v4

    move-object v4, p1

    .line 1748
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1751
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1755
    invoke-virtual {v6}, Lcom/facebook/internal/Logger;->log()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_5

    .line 1751
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1753
    :cond_5
    throw p0
.end method

.method private static setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 1638
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string v0, "gzip"

    .line 1639
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Content-Type"

    .line 1641
    invoke-static {}, Lcom/facebook/GraphRequest;->getMimeContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 901
    sput-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-void
.end method

.method static final shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z
    .locals 4

    .line 1658
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getVersion()Ljava/lang/String;

    move-result-object p0

    .line 1659
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "v"

    .line 1663
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "\\."

    .line 1666
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1668
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    aget-object v0, p0, v2

    .line 1669
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v3, :cond_4

    :cond_2
    aget-object v0, p0, v2

    .line 1670
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v3, :cond_3

    aget-object p0, p0, v1

    .line 1671
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public static toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1061
    invoke-static {p0}, Lcom/facebook/GraphRequest;->validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1067
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 1070
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x0

    .line 1082
    :try_start_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    :try_start_2
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1086
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1088
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "could not construct request body"

    invoke-direct {v0, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 1077
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1044
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1046
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1029
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/GraphRequest;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method static final validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V
    .locals 7

    .line 1676
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1677
    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1678
    invoke-static {v0}, Lcom/facebook/GraphRequest;->shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1679
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fields"

    .line 1680
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fields"

    .line 1681
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    :cond_1
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    const-string v3, "Request"

    const-string v4, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1688
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getGraphPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 1682
    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/GraphResponse;
    .locals 1

    .line 999
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .locals 2

    const/4 v0, 0x1

    .line 1014
    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/facebook/AccessToken;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/GraphRequest$Callback;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lorg/json/JSONObject;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method final getRelativeUrlForBatchedRequest()Ljava/lang/String;
    .locals 6

    .line 1495
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 1499
    new-array v2, v1, [Ljava/lang/Object;

    .line 1500
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1502
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "%s?%s"

    .line 1504
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1496
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 5

    .line 1508
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    const-string v1, "/videos"

    .line 1515
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1518
    :cond_1
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    .line 1520
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1523
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Lcom/facebook/AccessToken;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    return-void
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0

    .line 877
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    return-void
.end method

.method public final setCallback(Lcom/facebook/GraphRequest$Callback;)V
    .locals 1

    .line 920
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 921
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    goto :goto_1

    .line 922
    :cond_1
    :goto_0
    new-instance v0, Lcom/facebook/GraphRequest$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V

    .line 959
    iput-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    :goto_1
    return-void
.end method

.method public final setGraphObject(Lorg/json/JSONObject;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 743
    :cond_2
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    :goto_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public final setSkipClientToken(Z)V
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    .line 1362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accessToken: "

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 1364
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    .line 1367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    .line 1371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
