.class public Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final ARGUMENT_SELECTOR:Ljava/lang/String; = "selector"

.field private static final USE_SUPPORT_DYNAMIC_GROUP:Z


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UseSupportDynamicGroup"

    const/4 v1, 0x3

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 71
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->ensureRouteSelector()V

    .line 67
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 159
    sget-boolean p1, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->updateLayout()V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateCastDialog(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteCastDialog;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {v0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 0

    .line 131
    new-instance p2, Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p2, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 136
    sget-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->onCreateCastDialog(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteCastDialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 138
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteCastDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 142
    :goto_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onStop()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 149
    sget-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    :cond_0
    return-void
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 95
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->ensureRouteSelector()V

    .line 96
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "selector"

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 107
    sget-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
