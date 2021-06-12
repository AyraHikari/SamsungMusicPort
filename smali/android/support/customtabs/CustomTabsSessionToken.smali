.class public Landroid/support/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Landroid/support/customtabs/CustomTabsCallback;

.field private final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 88
    new-instance p1, Landroid/support/customtabs/CustomTabsSessionToken$1;

    invoke-direct {p1, p0}, Landroid/support/customtabs/CustomTabsSessionToken$1;-><init>(Landroid/support/customtabs/CustomTabsSessionToken;)V

    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback:Landroid/support/customtabs/CustomTabsCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    return-object p0
.end method

.method public static createMockSessionTokenForTesting()Landroid/support/customtabs/CustomTabsSessionToken;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 83
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;

    invoke-direct {v1}, Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    return-object v0
.end method

.method public static getSessionTokenFromIntent(Landroid/content/Intent;)Landroid/support/customtabs/CustomTabsSessionToken;
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.support.customtabs.extra.SESSION"

    .line 70
    invoke-static {p0, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 151
    instance-of v0, p1, Landroid/support/customtabs/CustomTabsSessionToken;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    check-cast p1, Landroid/support/customtabs/CustomTabsSessionToken;

    .line 153
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCallback()Landroid/support/customtabs/CustomTabsCallback;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback:Landroid/support/customtabs/CustomTabsCallback;

    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssociatedWith(Landroid/support/customtabs/CustomTabsSession;)Z
    .locals 1

    .line 168
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
