.class public Landroid/support/v7/app/MediaRouteChooserDialogFragment;
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

    sput-boolean v0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 69
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 65
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    sget-boolean p1, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->updateLayout()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateLayout()V

    :goto_0
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;
    .locals 0

    .line 129
    new-instance p2, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {p2, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public onCreateDevicePickerDialog(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteDevicePickerDialog;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-direct {v0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 134
    sget-boolean v0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->onCreateDevicePickerDialog(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 136
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 139
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 141
    :goto_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 91
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 92
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 95
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "selector"

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 103
    sget-boolean v0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->USE_SUPPORT_DYNAMIC_GROUP:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    :cond_2
    :goto_0
    return-void

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
