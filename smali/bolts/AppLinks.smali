.class public final Lbolts/AppLinks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "al_applink_data"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .line 47
    invoke-static {p0}, Lbolts/AppLinks;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "extras"

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
