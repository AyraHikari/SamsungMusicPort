.class Landroid/support/v4/widget/SeslEdgeEffect$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SeslEdgeEffect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SeslEdgeEffect;Landroid/os/Looper;)V
    .locals 0

    .line 283
    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect$1;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 286
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect$1;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
