.class Landroid/support/v7/app/MediaRouteCastDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$1;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$1;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteCastDialog;->updateRoutes(Ljava/util/List;)V

    :goto_0
    return-void
.end method
