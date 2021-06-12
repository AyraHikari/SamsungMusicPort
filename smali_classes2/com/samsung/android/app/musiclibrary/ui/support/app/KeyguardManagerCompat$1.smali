.class final Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;->a()V

    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;->b()V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;->c()V

    :cond_0
    return-void
.end method
