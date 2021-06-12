.class Lcom/facebook/login/LoginLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_FACEBOOK_VERSION:Ljava/lang/String; = "facebookVersion"

.field static final EVENT_EXTRAS_FAILURE:Ljava/lang/String; = "failure"

.field static final EVENT_EXTRAS_IS_REAUTHORIZE:Ljava/lang/String; = "isReauthorize"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field static final EVENT_NAME_LOGIN_METHOD_NOT_TRIED:Ljava/lang/String; = "fb_mobile_login_method_not_tried"

.field static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_NAME_LOGIN_STATUS_COMPLETE:Ljava/lang/String; = "fb_mobile_login_status_complete"

.field static final EVENT_NAME_LOGIN_STATUS_START:Ljava/lang/String; = "fb_mobile_login_status_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_CHALLENGE:Ljava/lang/String; = "7_challenge"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"


# instance fields
.field private final appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private facebookVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/facebook/login/LoginLogger;->applicationId:Ljava/lang/String;

    .line 78
    invoke-static {p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.facebook.katana"

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "1_timestamp_ms"

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "0_auth_logger_id"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "3_method"

    const-string v1, ""

    .line 104
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "2_result"

    const-string v1, ""

    .line 105
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "5_error_message"

    const-string v1, ""

    .line 106
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "4_error_code"

    const-string v1, ""

    .line 107
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "6_extras"

    const-string v1, ""

    .line 108
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string v0, "2_result"

    .line 183
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string p3, "5_error_message"

    .line 186
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    const-string p3, "4_error_code"

    .line 189
    invoke-virtual {p1, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p6, :cond_3

    .line 191
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 192
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p4, "6_extras"

    .line 193
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p3, "3_method"

    .line 195
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string p3, "fb_mobile_login_method_complete"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logAuthorizationMethodNotTried(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 201
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "3_method"

    .line 202
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v0, "fb_mobile_login_method_not_tried"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 171
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "3_method"

    .line 172
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v0, "fb_mobile_login_method_start"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string v0, "2_result"

    .line 141
    invoke-virtual {p3}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 143
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string p3, "5_error_message"

    .line 144
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    const/4 p5, 0x0

    if-nez p3, :cond_2

    .line 150
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    move-object p3, p5

    :goto_0
    if-eqz p4, :cond_4

    if-nez p3, :cond_3

    .line 154
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    move-object p3, p2

    .line 157
    :cond_3
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    if-eqz p3, :cond_5

    const-string p2, "6_extras"

    .line 164
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_5
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string p3, "fb_mobile_login_complete"

    invoke-virtual {p2, p3, p5, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logLoginStatusError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 227
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "2_result"

    .line 228
    sget-object v1, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 230
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5_error_message"

    .line 231
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v0, "fb_mobile_login_status_complete"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logLoginStatusFailure(Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "2_result"

    const-string v1, "failure"

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "fb_mobile_login_status_complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logLoginStatusStart(Ljava/lang/String;)V
    .locals 3

    .line 208
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "fb_mobile_login_status_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logLoginStatusSuccess(Ljava/lang/String;)V
    .locals 3

    .line 213
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "2_result"

    .line 214
    sget-object v1, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    .line 216
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "fb_mobile_login_status_complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logStartLogin(Lcom/facebook/login/LoginClient$Request;)V
    .locals 5

    .line 113
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "login_behavior"

    .line 119
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "request_code"

    .line 120
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "permissions"

    const-string v3, ","

    .line 122
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "default_audience"

    .line 124
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/DefaultAudience;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isReauthorize"

    .line 125
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    iget-object p1, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "facebookVersion"

    .line 127
    iget-object v2, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "6_extras"

    .line 129
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    iget-object p1, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "fb_mobile_login_start"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 236
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    .line 240
    invoke-static {v0}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "2_result"

    .line 241
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 242
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "5_error_message"

    .line 243
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "3_method"

    .line 244
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method
