.class Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 10

    .line 43
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v9

    .line 44
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v4

    .line 50
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->hasPublishPermission()Z

    move-result v5

    .line 51
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v6

    .line 52
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    .line 44
    invoke-static/range {v0 .. v8}, Lcom/facebook/internal/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "e2e"

    .line 55
    invoke-virtual {p0, v0, v9}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
