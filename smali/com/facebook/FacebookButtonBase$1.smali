.class Lcom/facebook/FacebookButtonBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookButtonBase;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookButtonBase;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    iget-object v1, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/FacebookButtonBase;->access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase$1;->this$0:Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/FacebookButtonBase;->access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
