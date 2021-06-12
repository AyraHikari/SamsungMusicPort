.class Landroid/support/v4/widget/SeslEdgeEffect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Landroid/support/v4/widget/SeslEdgeEffect;)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;->access$002(Landroid/support/v4/widget/SeslEdgeEffect;Z)Z

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-static {v2}, Landroid/support/v4/widget/SeslEdgeEffect;->access$100(Landroid/support/v4/widget/SeslEdgeEffect;)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-static {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->access$200(Landroid/support/v4/widget/SeslEdgeEffect;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect$2;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-static {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->access$300(Landroid/support/v4/widget/SeslEdgeEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
