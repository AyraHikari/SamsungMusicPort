.class final Lcom/facebook/login/LoginStatusClient;
.super Lcom/facebook/internal/PlatformServiceClient;
.source "SourceFile"


# static fields
.field static final DEFAULT_TOAST_DURATION_MS:J = 0x1388L


# instance fields
.field private final graphApiVersion:Ljava/lang/String;

.field private final loggerRef:Ljava/lang/String;

.field private final toastDurationMs:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const v2, 0x1000a

    const v3, 0x1000b

    const v4, 0x133c6ab

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/facebook/login/LoginStatusClient;->loggerRef:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/facebook/login/LoginStatusClient;->graphApiVersion:Ljava/lang/String;

    .line 49
    iput-wide p5, p0, Lcom/facebook/login/LoginStatusClient;->toastDurationMs:J

    return-void
.end method


# virtual methods
.method protected populateRequestBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "com.facebook.platform.extra.LOGGER_REF"

    .line 54
    iget-object v1, p0, Lcom/facebook/login/LoginStatusClient;->loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.platform.extra.GRAPH_API_VERSION"

    .line 55
    iget-object v1, p0, Lcom/facebook/login/LoginStatusClient;->graphApiVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.platform.extra.EXTRA_TOAST_DURATION_MS"

    .line 56
    iget-wide v1, p0, Lcom/facebook/login/LoginStatusClient;->toastDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
