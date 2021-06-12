.class Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
.super Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/DeviceLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/DeviceLoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 2

    .line 100
    invoke-static {}, Lcom/facebook/login/DeviceLoginManager;->getInstance()Lcom/facebook/login/DeviceLoginManager;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 102
    sget-object v1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 103
    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setDeviceRedirectUri(Landroid/net/Uri;)V

    return-object v0
.end method
