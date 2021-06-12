.class Landroid/support/customtabs/CustomTabsSessionToken$MockCallback;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsSessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
