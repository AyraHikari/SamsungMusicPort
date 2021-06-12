.class public Landroid/support/customtabs/TrustedWebUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_LAUNCH_AS_TRUSTED_WEB_ACTIVITY:Ljava/lang/String; = "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchAsTrustedWebActivity(Landroid/content/Context;Landroid/support/customtabs/CustomTabsIntent;Landroid/net/Uri;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/customtabs/CustomTabsIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p1, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 74
    invoke-static {v0, v1}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p1, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p0, p2}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given CustomTabsIntent should be associated with a valid CustomTabsSession"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
