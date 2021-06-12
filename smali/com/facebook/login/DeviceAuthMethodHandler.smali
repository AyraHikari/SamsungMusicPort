.class Lcom/facebook/login/DeviceAuthMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/DeviceAuthMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/facebook/login/DeviceAuthMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method

.method public static declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    const-class v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 110
    :cond_0
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0

    throw v1
.end method

.method private showDialog(Lcom/facebook/login/LoginClient$Request;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthMethodHandler;->createDeviceAuthDialog()Lcom/facebook/login/DeviceAuthDialog;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "login_with_facebook"

    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/DeviceAuthDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDeviceAuthDialog()Lcom/facebook/login/DeviceAuthDialog;
    .locals 1

    .line 60
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog;-><init>()V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "device_auth"

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 65
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    const-string v1, "User canceled log in."

    .line 64
    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 72
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 71
    invoke-static {v0, v1, p1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 88
    new-instance v11, Lcom/facebook/AccessToken;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 99
    iget-object v1, v0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 100
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 99
    invoke-static {v1, v11}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .line 102
    iget-object v2, v0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v1}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->showDialog(Lcom/facebook/login/LoginClient$Request;)V

    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
