.class public final Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 19
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    const/4 p0, 0x1

    return p0
.end method
