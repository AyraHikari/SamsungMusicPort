.class Landroid/support/customtabs/CustomTabsSessionToken$1;
.super Landroid/support/customtabs/CustomTabsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string v0, "RemoteException during ICustomTabsCallback transaction"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 1

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken$1;->this$0:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Landroid/support/customtabs/CustomTabsSessionToken;->access$000(Landroid/support/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/customtabs/ICustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
