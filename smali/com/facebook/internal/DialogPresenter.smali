.class public Lcom/facebook/internal/DialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/DialogPresenter$ParameterProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;
    .locals 2

    .line 229
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1, p0, v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFallbackUrl()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 2

    .line 245
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, v1, p0}, Lcom/facebook/internal/DialogPresenter;->getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I

    move-result-object p0

    .line 249
    invoke-static {v1, p0}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I
    .locals 1

    .line 261
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getVersionSpec()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 265
    new-array p0, p0, [I

    const/4 p1, 0x0

    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getMinVersion()I

    move-result p2

    aput p2, p0, p1

    return-object p0
.end method

.method public static logDialogActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 273
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_dialog_outcome"

    .line 275
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public static present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    return-void
.end method

.method public static present(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/FragmentWrapper;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    return-void
.end method

.method public static setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p0, v0}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public static setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v3

    .line 102
    invoke-static {p1}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object p1

    .line 97
    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V
    .locals 4

    .line 190
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p2

    .line 194
    invoke-virtual {p2}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 202
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getParameters()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_0
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getLegacyParameters()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 210
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v0, v2, v1, p2, p1}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p0, p1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void

    .line 220
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public static setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    .line 116
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v2

    .line 119
    invoke-static {p2, v1, p1, v2, v0}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p1, "FacebookDialogFragment"

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p2}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static setupAppCallForWebFallbackDialog(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;Lcom/facebook/internal/DialogFeature;)V
    .locals 3

    .line 135
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 138
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 147
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v2, v0, p1}, Lcom/facebook/internal/ServerProtocol;->getQueryParamsForPlatformActivityIntentWebFallback(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 169
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_fallback"

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v2

    .line 174
    invoke-static {p1, v1, p2, v2, v0}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 180
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "FacebookDialogFragment"

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, p1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void

    .line 153
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unable to fetch the app\'s key-hash"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
