.class public final Lcom/facebook/internal/ServerProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIALOG_AUTHORITY_FORMAT:Ljava/lang/String; = "m.%s"

.field public static final DIALOG_CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field public static final DIALOG_PARAM_E2E:Ljava/lang/String; = "e2e"

.field public static final DIALOG_PARAM_LEGACY_OVERRIDE:Ljava/lang/String; = "legacy_override"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final DIALOG_PARAM_RETURN_SCOPES:Ljava/lang/String; = "return_scopes"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PARAM_SDK_VERSION:Ljava/lang/String; = "sdk"

.field public static final DIALOG_PARAM_SSO_DEVICE:Ljava/lang/String; = "sso"

.field public static final DIALOG_PARAM_STATE:Ljava/lang/String; = "state"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field public static final DIALOG_REDIRECT_CHROME_OS_URI:Ljava/lang/String; = "fbconnect://chrome_os_success"

.field public static final DIALOG_REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field public static final DIALOG_REREQUEST_AUTH_TYPE:Ljava/lang/String; = "rerequest"

.field public static final DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST:Ljava/lang/String; = "token,signed_request"

.field public static final DIALOG_RETURN_SCOPES_TRUE:Ljava/lang/String; = "true"

.field public static final FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH:Ljava/lang/String; = "touch"

.field public static final FALLBACK_DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final FALLBACK_DIALOG_PARAM_BRIDGE_ARGS:Ljava/lang/String; = "bridge_args"

.field public static final FALLBACK_DIALOG_PARAM_KEY_HASH:Ljava/lang/String; = "android_key_hash"

.field public static final FALLBACK_DIALOG_PARAM_METHOD_ARGS:Ljava/lang/String; = "method_args"

.field public static final FALLBACK_DIALOG_PARAM_METHOD_RESULTS:Ljava/lang/String; = "method_results"

.field public static final FALLBACK_DIALOG_PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final GRAPH_API_VERSION:Ljava/lang/String; = "v3.2"

.field private static final GRAPH_URL_FORMAT:Ljava/lang/String; = "https://graph.%s"

.field private static final GRAPH_VIDEO_URL_FORMAT:Ljava/lang/String; = "https://graph-video.%s"

.field private static final TAG:Ljava/lang/String; = "com.facebook.internal.ServerProtocol"

.field public static final errorConnectionFailure:Ljava/lang/String; = "CONNECTION_FAILURE"

.field public static final errorsProxyAuthDisabled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final errorsUserCanceled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "service_disabled"

    const-string v1, "AndroidAuthKillSwitchException"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    const-string v0, "access_denied"

    const-string v1, "OAuthAccessDeniedException"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultAPIVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v3.2"

    return-object v0
.end method

.method public static final getDialogAuthority()Ljava/lang/String;
    .locals 4

    const-string v0, "m.%s"

    const/4 v1, 0x1

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getFacebookDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGraphUrlBase()Ljava/lang/String;
    .locals 4

    const-string v0, "https://graph.%s"

    const/4 v1, 0x1

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getFacebookDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGraphVideoUrlBase()Ljava/lang/String;
    .locals 4

    const-string v0, "https://graph-video.%s"

    const/4 v1, 0x1

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getFacebookDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryParamsForPlatformActivityIntentWebFallback(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 109
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 115
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android_key_hash"

    .line 117
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id"

    .line 118
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    .line 119
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "display"

    const-string v0, "touch"

    .line 120
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action_id"

    .line 123
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 125
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 128
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    .line 129
    invoke-static {p2}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "bridge_args"

    .line 135
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "method_args"

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    .line 139
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 p2, 0x6

    sget-object v0, Lcom/facebook/internal/ServerProtocol;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating Url -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    return-object v1
.end method
