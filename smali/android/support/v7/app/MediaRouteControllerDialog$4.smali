.class Landroid/support/v7/app/MediaRouteControllerDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 372
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$4;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 375
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$4;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_0

    .line 376
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$4;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 380
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$4;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaRouteCtrlDialog"

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not sent, it had been canceled."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
