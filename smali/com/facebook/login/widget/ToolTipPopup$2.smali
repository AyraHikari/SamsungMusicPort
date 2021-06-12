.class Lcom/facebook/login/widget/ToolTipPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ToolTipPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    return-void
.end method
